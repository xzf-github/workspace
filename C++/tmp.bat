@echo off  
setlocal enabledelayedexpansion  
  
:: 设置变量  
set "input_folder=C:\Users\26365\Desktop"  
set "output_folder=C:\Users\26365\Desktop"  
set "exe_file=temp3.exe"  
set "min_m=1"  
set "max_m=1000"  
set "min_n=1"  
set "max_n=9"  
set "num_of_sets=10"  
  
:: 创建文件夹（如果尚不存在）  
if not exist "%input_folder%" mkdir "%input_folder%"  
if not exist "%output_folder%" mkdir "%output_folder%"  
  
:: 生成随机数据并运行exe程序  
for /L %%i in (1,1,%num_of_sets%) do (  
    set /a "m=%random% %% 1000 + 1"  
    set /a "n=%random% %% 9 + 1" 

    echo !m! !n! > "%input_folder%\%%i.in"  
    "%exe_file%" < "%input_folder%\%%i.in" > "%output_folder%\%%i.out"  
)  
   
pause