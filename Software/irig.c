#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int cod[5][10];
int fac[]={1,2,4,8,10,20,40,80,100,200};
int pow[]={1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536};
int tod[17];
char** tipo={"Segundos","Minutos","Horas","Dia","Año"};
static struct timeval tm1;

int codifica(int pos,int val){
//	printf("Codificando %s.",tipo[pos]);
	int tmp=val;
	int ret=0;
	int i;
	for(i=9;i>=0;i--){
		if(tmp>=fac[i]){
			cod[pos][i]=1;
			tmp-=fac[i];		
			ret+=pow[i];
		}
		else{
			cod[pos][i]=0;
		}
	}
	return ret;
}
int factoriza(int seg){
	int tmp=seg;
	int ret=0;
	int i;
	//printf("%d",tmp);
	for(i=16;i>=0;i--){
		if(tmp>=pow[i]){
			tod[i]=1;
			tmp-=pow[i];
			ret+=pow[i];
		}	
		else{
			tod[i]=0;
		}
	}
	return ret;
}


static inline void start()
{
    gettimeofday(&tm1, NULL);
}

static inline void stop()
{
    struct timeval tm2;
    gettimeofday(&tm2, NULL);

    unsigned long long t = 1000 * (tm2.tv_sec - tm1.tv_sec) + (tm2.tv_usec - tm1.tv_usec) / 1000;
    printf("%llu ms\n", t);
}
int main(int argc, char **argv){

	if(argc<6){
		return 1;
	}
	start();


	int i,j;
	for(i=0;i<5;i++){	
		printf("%d\t-\t", codifica(i,atoi(argv[i+1])));
//		printf("%s:  ",tipo[i]);
		for(j=0;j<10;j++){
			printf("%d ",cod[i][j]);
		}
		printf("\n");
	}

	printf("%d\t-\t", factoriza(atoi(argv[1])+(atoi(argv[2])*60)+(atoi(argv[3])*3600)));
	for(j=0;j<17;j++){
		printf("%d ",tod[j]);
	}
	printf("\n\n");
	stop();
}











