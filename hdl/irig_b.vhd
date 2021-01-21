LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY irig_b is
	GENERIC(
		FREQ_IN: INTEGER:= 62500000
	);
	PORT(
		clk,reset,pps,enable,update	:IN STD_LOGIC;
		output			:OUT STD_LOGIC;
		irq_ou			:OUT STD_LOGIC;
		year				:IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		day				:IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		hour				:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		min				:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		sec				:IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END ENTITY irig_b;

ARCHITECTURE funcional OF irig_b IS
	COMPONENT freq_div
		GENERIC(
			FREQ_IN	:INTEGER := FREQ_IN;
			FREQ_OU	:INTEGER := 1
		);
		PORT(
			clk_in	:IN STD_LOGIC;
			pps		:IN STD_LOGIC;
			clk_ou	:OUT STD_LOGIC
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
			irq_ou	:OUT STD_LOGIC;
			year		:IN STD_LOGIC_VECTOR(11 DOWNTO 0);
			day		:IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			hour		:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			min		:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			sec		:IN STD_LOGIC_VECTOR(5 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL clock,rs,up,prev_pps	: STD_LOGIC:='0';
BEGIN
	divisor: freq_div
		PORT MAP(
			clk,
			pps,
			clock
		);
	irig: irigb_mod
		PORT MAP(
			clock,
			pps,
			enable,
			rs,
			up,
			output,
			irq_ou,
			year,
			day,
			hour,
			min,
			sec
		);
		

	ctrlpps: PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			prev_pps<=pps;
		END IF;
	END PROCESS ctrlpps;
	

	ctrlsta: PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF prev_pps='1' and pps='1' THEN
				up<=update;
				rs<=reset;
			ELSE
				IF update='1' THEN
					up<='1';
				END IF;
				IF reset='1' THEN 
					rs<='1';
				END IF;
			END IF;			
		END IF;
	END PROCESS ctrlsta;
	
END funcional;





















