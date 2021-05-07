#============================================================
# CLOCK
#============================================================
set_location_assignment PIN_W36 -to clk
set_instance_assignment -name IO_STANDARD "1.8 V" -to clk


#============================================================
# SW
#============================================================
### | SW[1] | SW[0] |
set_location_assignment PIN_AY28 -to sw[0]
set_instance_assignment -name IO_STANDARD "1.2-V" -to sw[0]

set_location_assignment PIN_AM27 -to sw[1]
set_instance_assignment -name IO_STANDARD "1.2-V" -to sw[1]


#============================================================
# LED
#============================================================
set_location_assignment PIN_T11 -to led[0]
set_instance_assignment -name IO_STANDARD "1.8-V" -to led[0]
set_location_assignment PIN_R11 -to led[1]
set_instance_assignment -name IO_STANDARD "1.8-V" -to led[1]
set_location_assignment PIN_N15 -to led[2]
set_instance_assignment -name IO_STANDARD "1.8-V" -to led[2]
set_location_assignment PIN_M15 -to led[3]
set_instance_assignment -name IO_STANDARD "1.8-V" -to led[3]


#============================================================
# 7seg
#============================================================
### | 1 | 0 | 
set_location_assignment PIN_AM32 -to seg7led[1][0]
set_location_assignment PIN_AN32 -to seg7led[1][1]
set_location_assignment PIN_AN31 -to seg7led[1][2]
set_location_assignment PIN_AP31 -to seg7led[1][3]
set_location_assignment PIN_BA35 -to seg7led[1][4]
set_location_assignment PIN_BD34 -to seg7led[1][5]
set_location_assignment PIN_AR31 -to seg7led[1][6]
set_location_assignment PIN_BC28 -to seg7led[1][7]
set_location_assignment PIN_AW8 -to seg7led[0][0]
set_location_assignment PIN_AY8 -to seg7led[0][1]
set_location_assignment PIN_AY9 -to seg7led[0][2]
set_location_assignment PIN_BA9 -to seg7led[0][3]
set_location_assignment PIN_BB9 -to seg7led[0][4]
set_location_assignment PIN_BD10 -to seg7led[0][5]
set_location_assignment PIN_V10 -to seg7led[0][6]
set_location_assignment PIN_AG9 -to seg7led[0][7]

set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][0]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][1]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][2]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][3]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][4]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][5]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][6]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[1][7]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[0][0]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[0][1]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[0][2]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[0][3]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[0][4]
set_instance_assignment -name IO_STANDARD "1.2-V" -to seg7led[0][5]
set_instance_assignment -name IO_STANDARD "1.8-V" -to seg7led[0][6]
set_instance_assignment -name IO_STANDARD "1.8-V" -to seg7led[0][7]


#============================================================
# BUTTON
#============================================================
### | btn[3] | btn[2] | btn[1] | btn[0] |
set_location_assignment PIN_AR9  -to btn[3]
set_instance_assignment -name IO_STANDARD "1.2-V" -to btn[3]

set_location_assignment PIN_AV16 -to btn[2]
set_instance_assignment -name IO_STANDARD "1.2-V" -to btn[2]

set_location_assignment PIN_AE13 -to btn[1]
set_instance_assignment -name IO_STANDARD "1.2-V" -to btn[1]

set_location_assignment PIN_AJ13 -to btn[0]
set_instance_assignment -name IO_STANDARD "1.2-V" -to btn[0]



#============================================================
# KEY
#============================================================


#============================================================
# VGA
#============================================================


