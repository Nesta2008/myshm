@ECHO OFF
"D:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "D:\RKD_Git\MyShm\Project_2\labels.tmp" -fI -W+ie -C V2 -o "D:\RKD_Git\MyShm\Project_2\Project_2.hex" -d "D:\RKD_Git\MyShm\Project_2\Project_2.obj" -e "D:\RKD_Git\MyShm\Project_2\Project_2.eep" -m "D:\RKD_Git\MyShm\Project_2\Project_2.map" "D:\RKD_Git\MyShm\Project_2\Project_2.asm"
