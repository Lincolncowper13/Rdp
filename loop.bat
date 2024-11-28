@echo off
set /a counter=0
set /a max_time=43200  # 30 hari dalam menit (30 * 24 * 60)

:loop
echo HEN RDP ACTIVE!!
set /a counter+=1
if %counter% GEQ %max_time% exit
ping 127.0.0.1 > Nul
timeout /t 60 >nul  # Menunggu 60 detik (1 menit)
goto loop