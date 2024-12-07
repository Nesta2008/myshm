@ECHO OFF
"D:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "D:\RKD_Git\MyShm\Project_2_1\labels.tmp" -fI -W+ie -C V2 -o "D:\RKD_Git\MyShm\Project_2_1\Project_2_1.hex" -d "D:\RKD_Git\MyShm\Project_2_1\Project_2_1.obj" -e "D:\RKD_Git\MyShm\Project_2_1\Project_2_1.eep" -m "D:\RKD_Git\MyShm\Project_2_1\Project_2_1.map" "D:\RKD_Git\MyShm\Project_2_1\Project_2_1.asm"
