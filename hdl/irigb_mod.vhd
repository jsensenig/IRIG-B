-- IRIG-B MODULE
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY irigb_mod IS
  PORT(
    clk_in	:IN STD_LOGIC;
    pps_in	:IN STD_LOGIC;
    enable	:IN STD_LOGIC;
    reset	:IN STD_LOGIC;
	 update	:IN STD_LOGIC;
	 output	:OUT STD_LOGIC;
	 irq_ou	:OUT STD_LOGIC;
	     
    year		:IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    day		:IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    hour		:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    min		:IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    sec		:IN STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END entity irigb_mod;

ARCHITECTURE funcional OF irigb_mod IS
	SIGNAL sec_s 	:STD_LOGIC_VECTOR(5 DOWNTO 0):="000000";
	SIGNAL min_s 	:STD_LOGIC_VECTOR(5 DOWNTO 0):="000000";
	SIGNAL hour_s 	:STD_LOGIC_VECTOR(4 DOWNTO 0):="00000";
	SIGNAL day_s 	:STD_LOGIC_VECTOR(8 DOWNTO 0):="000000001";
	SIGNAL year_s 	:STD_LOGIC_VECTOR(11 DOWNTO 0):="000000000000";
	
	SIGNAL tod 		:STD_LOGIC_VECTOR(16 DOWNTO 0):="00000000000000000";
	SIGNAL sec_c 	:STD_LOGIC_VECTOR(6 DOWNTO 0):="0000000";
	SIGNAL min_c 	:STD_LOGIC_VECTOR(6 DOWNTO 0):="0000000";
	SIGNAL hour_c 	:STD_LOGIC_VECTOR(5 DOWNTO 0):="000000";
	SIGNAL day_c 	:STD_LOGIC_VECTOR(9 DOWNTO 0):="0000000001";
	SIGNAL year_c 	:STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";

	SIGNAL pre_pps	:STD_LOGIC;
	
	SIGNAL tmp		:INTEGER RANGE 9 DOWNTO 0 :=0;
	SIGNAL cnt		:INTEGER RANGE 99 DOWNTO 0 :=0;
	
	SIGNAL irq_ax: STD_LOGIC :='0';
  
BEGIN
	ctrlpps:PROCESS(clk_in)
	BEGIN		
		IF rising_edge(clk_in) THEN
			pre_pps<=pps_in;
		END IF;
	END PROCESS ctrlpps;
	
	ctrlclk:PROCESS(clk_in,reset)
		VARIABLE aux		:INTEGER RANGE 0 TO 400;
	BEGIN
		IF (pre_pps='0' and pps_in='1') THEN
			tmp<=0;cnt<=0;
			IF reset='1' THEN 
				sec_s<="000000";
				min_s<="000000";
				hour_s<="00000";
				day_s<="000000001";
				year_s<="000000000000";
			ELSIF update='1' THEN
				aux:=CONV_INTEGER(unsigned(sec))+1;
				sec_s<=sec+"000001";
				min_s<=min;
				hour_s<=hour;
				day_s<=day;
				year_s<=year;
			ELSE
				aux:=CONV_INTEGER(unsigned(sec_s))+1;
				IF aux=60 THEN
					sec_s<="000000";
					aux:=CONV_INTEGER(unsigned(min_s))+1;
					IF aux=60 THEN
						irq_ax<='1';
						min_s<="000000";
						aux:=CONV_INTEGER(unsigned(hour_s))+1;
						IF aux=24 THEN
							hour_s<="00000";
							aux:=CONV_INTEGER(unsigned(day_s))+1;
							IF ((CONV_INTEGER(UNSIGNED(year_s))mod 4)=0 and (CONV_INTEGER(UNSIGNED(year_s))mod 100)/=0) or ((CONV_INTEGER(UNSIGNED(year_s))mod 400)=0) THEN
								IF aux>=367 THEN
									day_s<="000000001";
									year_s<=CONV_STD_LOGIC_VECTOR((CONV_INTEGER(unsigned(year_s))+1),12);
								ELSE
									day_s<=day_s+"000000001";
								END IF;
							ELSE
								IF aux>=366 THEN   
									day_s<="000000001";
									year_s<=CONV_STD_LOGIC_VECTOR((CONV_INTEGER(unsigned(year_s))+1),12);								
								ELSE
									day_s<=day_s+"000000001";
								END IF;
							END IF;
						ELSE
							hour_s<=hour_s+"00001";
						END IF;
					ELSE
						min_s<=min_s+"000001";
					END IF;
				ELSE
					irq_ax<='0';
					sec_s<=sec_s+"000001";
				END IF;	
			END IF;
			
		ELSE
			IF rising_edge(clk_in) THEN
				IF tmp=9 THEN
					tmp<=0;
					IF cnt=99 THEN
						cnt<=0;
					ELSE
						cnt<=cnt+1;
					END IF;
				ELSE
					tmp<=tmp+1;
				END IF;
			END IF;
		END IF;
	END PROCESS ctrlclk;

	ctrlout:PROCESS(cnt,tmp)
	BEGIN
		IF enable='1' THEN
			IF(cnt=0 or cnt=9 or cnt=19 or cnt=29 or cnt=39 or cnt=49 or cnt=59 or cnt=69 or cnt=79 or cnt=89 or cnt=99) THEN
				IF(tmp<8) THEN
					output<='1';
				ELSE
					output<='0';
				END IF;
			ELSIF(cnt=5 or cnt=14 or cnt=18 or cnt=24 or cnt=27 or cnt=28 or cnt=34 or(cnt>41 and cnt<50) or cnt=54 or(cnt>59 and cnt<69) or(cnt>69 and cnt<79) or cnt=98) THEN
				IF(tmp<2) THEN
					output<='1';
				ELSE
					output<='0';
				END IF;
			ELSE
				CASE cnt IS
					WHEN 1 => IF(sec_c(0)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 2 => IF(sec_c(1)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0';	END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 3 => IF(sec_c(2)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0';	END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 4 => IF(sec_c(3)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0';	END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 6 => IF(sec_c(4)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0';	END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 7 => IF(sec_c(5)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0';	END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 8 => IF(sec_c(6)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0';	END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 10 => IF(min_c(0)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 11 => IF(min_c(1)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 12 => IF(min_c(2)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 13 => IF(min_c(3)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 15 => IF(min_c(4)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 16 => IF(min_c(5)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 17 => IF(min_c(6)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 20 => IF(hour_c(0)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 21 => IF(hour_c(1)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 22 => IF(hour_c(2)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 23 => IF(hour_c(3)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 25 => IF(hour_c(4)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 26 => IF(hour_c(5)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 30 => IF(day_c(0)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 31 => IF(day_c(1)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 32 => IF(day_c(2)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 33 => IF(day_c(3)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 35 => IF(day_c(4)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 36 => IF(day_c(5)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 37 => IF(day_c(6)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 38 => IF(day_c(7)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 40 => IF(day_c(8)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 41 => IF(day_c(9)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 50 => IF(year_c(0)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 51 => IF(year_c(1)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 52 => IF(year_c(2)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 53 => IF(year_c(3)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 55 => IF(year_c(4)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 56 => IF(year_c(5)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 57 => IF(year_c(6)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 58 => IF(year_c(7)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 80 => IF(tod(0)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 81 => IF(tod(1)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 82 => IF(tod(2)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 83 => IF(tod(3)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 84 => IF(tod(4)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 85 => IF(tod(5)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 86 => IF(tod(6)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 87 => IF(tod(7)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 88 => IF(tod(8)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 90 => IF(tod(9)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 91 => IF(tod(10)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 92 => IF(tod(11)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 93 => IF(tod(12)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 94 => IF(tod(13)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 95 => IF(tod(14)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 96 => IF(tod(15)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN 97 => IF(tod(16)='1') THEN IF(tmp<5) THEN output<='1'; ELSE output<='0'; END IF; ELSE IF(tmp<2) THEN output<='1'; ELSE output<='0'; END IF; END IF;
					WHEN OTHERS => null;
				END CASE;	
			END IF;
		ELSE
			output<='0';
		END IF;
	END PROCESS ctrlout;

	ctrlcon:PROCESS(clk_in)
		VARIABLE aux		:STD_LOGIC_VECTOR(9 DOWNTO 0):="0000000000";
	BEGIN
		IF rising_edge(clk_in) THEN
			IF cnt=0 and tmp=1 THEN
				tod<=CONV_STD_LOGIC_VECTOR(((CONV_INTEGER(unsigned(hour_s))*3600)+(CONV_INTEGER(unsigned(min_s))*60)+CONV_INTEGER(unsigned(sec_s))),17);	
				aux:="0000"&sec_s;
				IF CONV_INTEGER(unsigned(aux))>=40 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-40,10); sec_c(6)<='1'; ELSE sec_c(6)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=20 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-20,10); sec_c(5)<='1'; ELSE sec_c(5)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=10 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-10,10); sec_c(4)<='1'; ELSE sec_c(4)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=8 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-8,10); sec_c(3)<='1'; ELSE sec_c(3)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=4 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-4,10); sec_c(2)<='1'; ELSE sec_c(2)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=2 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-2,10); sec_c(1)<='1'; ELSE sec_c(1)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=1 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-1,10); sec_c(0)<='1'; ELSE sec_c(0)<='0'; END IF;
				aux:="0000"&min_s;
				IF CONV_INTEGER(unsigned(aux))>=40 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-40,10); min_c(6)<='1'; ELSE min_c(6)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=20 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-20,10); min_c(5)<='1'; ELSE min_c(5)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=10 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-10,10); min_c(4)<='1'; ELSE min_c(4)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=8 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-8,10); min_c(3)<='1'; ELSE min_c(3)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=4 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-4,10); min_c(2)<='1'; ELSE min_c(2)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=2 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-2,10); min_c(1)<='1'; ELSE min_c(1)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=1 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-1,10); min_c(0)<='1'; ELSE min_c(0)<='0'; END IF;
				aux:="00000"&hour_s;
				IF CONV_INTEGER(unsigned(aux))>=20 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-20,10); hour_c(5)<='1'; ELSE hour_c(5)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=10 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-10,10); hour_c(4)<='1'; ELSE hour_c(4)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=8 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-8,10); hour_c(3)<='1'; ELSE hour_c(3)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=4 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-4,10); hour_c(2)<='1'; ELSE hour_c(2)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=2 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-2,10); hour_c(1)<='1'; ELSE hour_c(1)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=1 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-1,10); hour_c(0)<='1'; ELSE hour_c(0)<='0'; END IF;
				aux:="0"&day_s;
				IF CONV_INTEGER(unsigned(aux))>=200 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-200,10); day_c(9)<='1'; ELSE day_c(9)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=100 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-100,10); day_c(8)<='1'; ELSE day_c(8)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=80 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-80,10); day_c(7)<='1'; ELSE day_c(7)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=40 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-40,10); day_c(6)<='1'; ELSE day_c(6)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=20 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-20,10); day_c(5)<='1'; ELSE day_c(5)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=10 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-10,10); day_c(4)<='1'; ELSE day_c(4)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=8 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-8,10); day_c(3)<='1'; ELSE day_c(3)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=4 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-4,10); day_c(2)<='1'; ELSE day_c(2)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=2 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-2,10); day_c(1)<='1'; ELSE day_c(1)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=1 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-1,10); day_c(0)<='1'; ELSE day_c(0)<='0'; END IF;
				aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(year_s)) mod 100,10);
				IF CONV_INTEGER(unsigned(aux))>=80 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-80,10); year_c(7)<='1'; ELSE year_c(7)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=40 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-40,10); year_c(6)<='1'; ELSE year_c(6)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=20 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-20,10); year_c(5)<='1'; ELSE year_c(5)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=10 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-10,10); year_c(4)<='1'; ELSE year_c(4)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=8 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-8,10); year_c(3)<='1'; ELSE year_c(3)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=4 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-4,10); year_c(2)<='1'; ELSE year_c(2)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=2 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-2,10); year_c(1)<='1'; ELSE year_c(1)<='0'; END IF;
				IF CONV_INTEGER(unsigned(aux))>=1 THEN aux:=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(unsigned(aux))-1,10); year_c(0)<='1'; ELSE year_c(0)<='0'; END IF;
			END IF;
		END IF;
	END PROCESS ctrlcon;

--	ctrlirq: PROCESS(sec_s)
--	BEGIN
--		IF sec_s="000000" THEN
--			irq_ou<='1';
--		ELSE
--			irq_ou<='0';
--		END IF;
--	END PROCESS ctrlirq;

	irq_ou<=irq_ax;
	
END ARCHITECTURE funcional;












