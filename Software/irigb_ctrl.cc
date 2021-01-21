#include <stdint.h>
#include <stdio.h>
#include <unistd.h>
#include <iostream>
#include <csignal>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/mman.h> //mmap
#include <unistd.h> //close
#include <signal.h> 
#include <ctime>
#include <bitset>
// GPIO 0
#define GPIO_BASEADDR 0x41200000
#define GPIO_HIGHADDR 0x4120FFFF
#define GPIO_CH0_OFFSET 0x0
#define GPIO_CH1_OFFSET 0x8
// GPIO 1
#define GPIO_1_BASEADDR 0x41210000
#define GPIO_1_HIGHADDR 0x4121FFFF
#define GPIO_1_CH0_OFFSET 0x0


using std::cout;
using std::endl;


int g_mem_fd;
void *mmapaddr0;
void *mmapaddr1;

// -- Map a physical address into a virtual one
void *MapPhysMemory(uint32_t base_addr, uint32_t high_addr) {
  void *mapped_addr;
  off_t dev_base = base_addr;
  if (g_mem_fd == 0) {
    g_mem_fd = open("/dev/mem",O_RDWR | O_SYNC);
    if (g_mem_fd == -1) {
      printf("Failed to map register [0x%08X 0x%08X].",base_addr,high_addr);
      g_mem_fd = 0;
      return NULL;
    }
  }
  // Map into user space the area of memory containing the device
  mapped_addr = mmap(0, (high_addr-base_addr), PROT_READ | PROT_WRITE, MAP_SHARED, g_mem_fd, dev_base & ~(high_addr-base_addr-1));
  if ( (int32_t)mapped_addr == -1) {
    printf("Failed to map register [0x%08X 0x%08X] into virtual address.",base_addr,high_addr);
    mapped_addr = NULL;
  }

  return mapped_addr;
}

void CloseMem () {
        if (g_mem_fd != -1)
                close(g_mem_fd);
}

// -- Release a physical memory map
void UnmapPhysMemory(void * address, size_t size) {
  // If it is open
  munmap(address,size);
}

// -- Read from a memory address (or memory mapped register)
uint32_t Xil_In32(uint32_t Addr) {
  return *(volatile uint32_t *) Addr;
}


//-- Write into a memory address (or memory mapped register)
void Xil_Out32(uint32_t OutAddress, uint32_t Value) {
  *(volatile uint32_t *) OutAddress = Value;
}

bool read_ = true;
void SigIntHandler(int param) {
  printf("Stopping status output...\n");
  read_ = false;
}

int ReadTimecode() {

  // Map GPIO and Config regs addresses
  printf("Mapping GPIO_1 and Config Registers ...\n");
  mmapaddr1 = MapPhysMemory(GPIO_1_BASEADDR,GPIO_1_HIGHADDR);
  printf("Received pointer to GPIO at %p\n", mmapaddr1);

  uint32_t timecode = Xil_In32((uint32_t)mmapaddr1 + GPIO_1_CH0_OFFSET);

  std::cout << "Raw timecode word = " << timecode << std::endl;

  uint16_t sec = ( timecode ) & 0x3F;
  uint16_t min = ( timecode >> 6 ) & 0x3F;
  uint16_t hr  = ( timecode >> 12 ) & 0x1F;
  uint16_t day = ( timecode >> 17 ) & 0x1FF;
  uint16_t yr  = ( timecode >> 26 ) & 0x3F;
  uint16_t stat = ( timecode >> 26 ) & 0xF;

  std::cout << "Read timecode. Yr: " << yr << " Day: " << day << " Hr: " << hr
            << " Min: " << min << " Sec: " << sec << std::endl;

  std::cout << "Read timecode. Yr: " << std::bitset<12>(yr) << " Day: " << std::bitset<9>(day) << " Hr: " << std::bitset<5>(hr)
            << " Min: " << std::bitset<6>(min) << " Sec: " << std::bitset<6>(sec) << std::endl;
  std::cout << "Status bits (4b) " << std::bitset<4>( stat ) << std::endl;

  sleep(1);

  // Close and clear
  CloseMem();

  g_mem_fd = 0;
  mmapaddr1 = NULL;

  return 0;

}

//int main(int argc, const char* argv[]) {
int SetTimecode() {

  // Current date and time
  time_t now = time(0);

  // Cast it into the C time struct
  tm *ltm = localtime(&now);

  ////////////////

  uint32_t enable = 1;
  uint32_t update = 1;
  uint32_t second = ltm -> tm_sec;
  uint32_t minute = ltm -> tm_min;
  uint32_t hour   = ltm -> tm_hour;
  uint32_t day    = ltm -> tm_yday + 1;
  uint32_t year   = ltm -> tm_year + 1900;

  ///////////////

    // Map GPIO and Config regs addresses
  printf("Mapping GPIO_0 and Config Registers ...\n");
  mmapaddr0 = MapPhysMemory(GPIO_BASEADDR,GPIO_HIGHADDR);
  printf("Received pointer to GPIO at %p\n", mmapaddr0);

  std::cout << "Setting timecode. Yr: " << year << " Day: " << day << " Hr: " << hour
            << " Min: " << minute << " Sec: " << second << std::endl;

  std::cout << "Setting timecode. Yr: " << std::bitset<12>(year) << " Day: " << std::bitset<9>(day) << " Hr: " << std::bitset<5>(hour)
            << " Min: " << std::bitset<6>(minute) << " Sec: " << std::bitset<6>(second) << std::endl;

  sleep(1);

  // Set time code
  uint32_t timecode_output = (0xFC & ( second << 2)); // [7:2] second
  timecode_output |= (0x3F00 & ( minute << 8));       // [13:8] minute
  timecode_output |= (0x7C000 & ( hour << 14));       // [18:14] hour
  timecode_output |= (0xFF80000 & ( day << 19));      // [27:19] day

  Xil_Out32((uint32_t)mmapaddr0 + GPIO_CH0_OFFSET, timecode_output);

  // Program the year
  uint32_t timecode2_output = (0xFFF & year); // [11:0]
  Xil_Out32((uint32_t)mmapaddr0 + GPIO_CH1_OFFSET, timecode2_output);

  sleep(1);

  std::cout << "Timecode with update bit low = " << std::bitset<32>(timecode_output) << std::endl;
  std::cout << "Setting update bit 1" << std::endl;

  // Update the timecode (set update bit high)
  timecode_output |= (0x2 & ( update << 1)); // [1:1] on 2nd channel
  Xil_Out32((uint32_t)mmapaddr0 + GPIO_CH0_OFFSET, timecode_output);

  sleep(2);

  std::cout << "Timecode with update bit high = " << std::bitset<32>(timecode_output) << std::endl;
  std::cout << "Setting update bit 0" << std::endl;

  // Set update bit low
  timecode_output ^= (0x2 & ( 1 << 1)); // [1:1] on 2nd channel
  Xil_Out32((uint32_t)mmapaddr0 + GPIO_CH0_OFFSET, timecode_output);

  std::cout << "Setting enable bit: " << enable << std::endl;

  // Enable the IRIG-B output (set enable bit high)
  timecode_output |= (0x1 & 1); // [0:0]
  Xil_Out32((uint32_t)mmapaddr0 + GPIO_CH0_OFFSET, timecode_output);

  std::cout << "Timecode with enable high = " << std::bitset<32>(timecode_output) << std::endl;

  // Shut things down
  sleep(1);

  printf("Shutting down... \n");
  sleep(1.0);

  //Close GPIO and clear
  CloseMem();

  g_mem_fd = 0;
  mmapaddr0 = NULL;

  return 0;

}

int main(int argc, const char* argv[]) {

  // User control
  enum commands {read_time=1,set_time=2,quit=3};
  int command = -1;
  bool stop_req_ = false;

  while(!stop_req_) {
    cout << "### Select command ### " << endl;
    cout << " 1 : Read Timecode" << endl;
    cout << " 2 : Set Timecode" << endl;
    cout << " 3 : Quit" << endl;

    std::cin >> command;
    switch(command) {
      case read_time:
        if (ReadTimecode()) {
          printf("Failure \n");
        }
        break;
      case set_time:
        if (SetTimecode()) {
          printf("Failure \n");
        }
        break;
      case quit:
        stop_req_ = true;
        break;
      default:
        cout << "Wrong option (" << command << ")." << endl;
        break;
    }
  }

}

