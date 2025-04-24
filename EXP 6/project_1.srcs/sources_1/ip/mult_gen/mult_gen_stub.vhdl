-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu May 30 13:13:07 2024
-- Host        : DESKTOP-MH78P00 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {f:/Hamza
--               Younes/exp6/project_1/project_1.srcs/sources_1/ip/mult_gen/mult_gen_stub.vhdl}
-- Design      : mult_gen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_gen is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    P : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end mult_gen;

architecture stub of mult_gen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[3:0],B[3:0],P[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_16,Vivado 2020.1";
begin
end;
