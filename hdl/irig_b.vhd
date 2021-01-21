LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY irig_b is
	GENERIC(
		FREQ_IN : INTEGER := 50000000
		FREQ_OUT: INTEGER := 1000
	);
	PORT(
		clk       :IN STD_LOGIC;
    reset     :IN STD_LOGIC;
    pps       :IN STD_LOGIC;
    enable    :IN STD_LOGIC;
    update	  :IN STD_LOGIC;
		irig_out	:OUT STD_LOGIC;
		irq_out		:OUT STD_LOGIC;
		pps_out		:OUT STD_LOGIC;
		clk_out		:OUT STD_LOGIC;
		year			:IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		day				:IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		hour			:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		min				:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		sec				:IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END ENTITY irig_b;

ARCHITECTURE functional OF irig_b IS

	COMPONENT freq_div
		GENERIC(
			FREQ_IN	:INTEGER := FREQ_IN;
			FREQ_OUT	:INTEGER := FREQ_OUT
		);
		PORT(
			clk_in	:IN STD_LOGIC;
			pps		  :IN STD_LOGIC;
			clk_out	:OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT irigb_mod 
		PORT(
			clk_in	:IN STD_LOGIC;
			pps_in	:IN STD_LOGIC;
			enable	:IN STD_LOGIC;
			reset		:IN STD_LOGIC;
			update	:IN STD_LOGIC;
			output	:OUT STD_LOGIC;
			irq_out	:OUT STD_LOGIC;
			year		:IN STD_LOGIC_VECTOR(11 DOWNTO 0);
			day		:IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			hour		:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			min		:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			sec		:IN STD_LOGIC_VECTOR(5 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL clock, rs, prev_pps, pps_i	: STD_LOGIC:='0';

BEGIN

	divisor: freq_div
		PORT MAP(
			clk_in  => clk,
			pps     => pps_i,
			clk_out => clock
		);

	irig: irigb_mod
		PORT MAP(
			clk_in => clock,
			pps_in => pps_i,
		  enable => enable,
			reset  => rs,
			update => update,
			output => irig_out,
			irq_out => irq_out,
			year   => year,
			day    => day,
			hour   => hour,
			min    => min,
			sec    => sec
		);
		

  ppsgen: process(clk)

  variable cnt : integer range 1 to FREQ_IN; 

  begin
      if rising_edge(clk) then
          if(cnt = FREQ_IN) then
              cnt := 1;
              pps_i <= not(pps_i);
          else
              cnt := cnt + 1;
          end if;
      end if;
  end process ppsgen;

  pps_out <= pps_i;

	ctrlpps: PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			prev_pps <= pps_i;
		END IF;
	END PROCESS ctrlpps;
	

	ctrlsta: PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF prev_pps = '1' and pps = '1' THEN
				rs <= reset;
			ELSE
				IF reset = '1' THEN 
					rs <= '1';
				END IF;
			END IF;			
		END IF;
	END PROCESS ctrlsta;
	
END functional;


