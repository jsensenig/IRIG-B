LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY freq_div IS 
  GENERIC(
    FREQ_IN: INTEGER:=20;
    FREQ_OU: INTEGER:=1
  );
  PORT(
    clk_in	:IN STD_LOGIC;
	 pps		:IN STD_LOGIC;
    clk_ou	:OUT STD_LOGIC
  );
END entity freq_div;


ARCHITECTURE funcional OF freq_div IS
	CONSTANT max_cnt: INTEGER:=FREQ_IN/FREQ_OU;
	SIGNAL cnt: INTEGER:=0;
	SIGNAL pre_pps : STD_LOGIC:='1';
BEGIN
  
  ctrlpps:PROCESS(clk_in)
  BEGIN
	IF rising_edge(clk_in) THEN
		pre_pps<=pps;
	END IF;
  END PROCESS ctrlpps;
  
	contar:PROCESS(clk_in)
		VARIABLE aux:INTEGER:=cnt;
	BEGIN
		IF rising_edge(clk_in) THEN
			IF cnt=(max_cnt-1) or (pre_pps='0' and pps='1') THEN
				aux:=0;
			ELSE
				aux:=cnt+1;
			END IF;
			
			IF aux<(max_cnt/2) THEN
				clk_ou<='1';
			ELSE
				clk_ou<='0';
			END IF;
			
			cnt<=aux;
		END IF;
	END PROCESS contar;

END ARCHITECTURE funcional;