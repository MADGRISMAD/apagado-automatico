@echo off
setlocal enabledelayedexpansion

:Menu
cls
echo 1. Programar apagado en 30 minutos
echo 2. Programar apagado en 1 hora
echo 3. Programar apagado en 1 hora y 30 minutos
echo 4. Programar apagado en 2 horas
echo 5. Programar apagado en 3 horas
echo 6. Programar apagado en 4 horas
echo 7. Programar apagado en 5 horas
echo 8. Programar reinicio en 30 minutos
echo 9. Programar reinicio en 1 hora
echo 10. Programar reinicio en 1 hora y 30 minutos
echo 11. Programar reinicio en 2 horas
echo 12. Programar reinicio en 3 horas
echo 13. Programar reinicio en 4 horas
echo 14. Programar reinicio en 5 horas
echo 15. Cancelar programación
echo 16. Salir
set /p opcion=Seleccione una opción: 

if "%opcion%"=="1" (
    set /a minutos=30
    goto :Programar
) else if "%opcion%"=="2" (
    set /a minutos=60
    goto :Programar
) else if "%opcion%"=="3" (
    set /a minutos=90
    goto :Programar
) else if "%opcion%"=="4" (
    set /a minutos=120
    goto :Programar
) else if "%opcion%"=="5" (
    set /a minutos=180
    goto :Programar
) else if "%opcion%"=="6" (
    set /a minutos=240
    goto :Programar
) else if "%opcion%"=="7" (
    set /a minutos=300
    goto :Programar
) else if "%opcion%"=="8" (
    set /a minutos=30
    goto :Programar
) else if "%opcion%"=="9" (
    set /a minutos=60
    goto :Programar
) else if "%opcion%"=="10" (
    set /a minutos=90
    goto :Programar
) else if "%opcion%"=="11" (
    set /a minutos=120
    goto :Programar
) else if "%opcion%"=="12" (
    set /a minutos=180
    goto :Programar
) else if "%opcion%"=="13" (
    set /a minutos=240
    goto :Programar
) else if "%opcion%"=="14" (
    set /a minutos=300
    goto :Programar
) else if "%opcion%"=="15" (
    shutdown /a
    echo Programación de apagado o reinicio cancelada.
    pause
    goto :Menu
) else if "%opcion%"=="16" (
    goto :Fin
) else (
    echo Opción no válida. Introduzca un número válido.
    pause
    goto :Menu
)

:Programar
shutdown /s /t !minutos! /f /d p:4:1 /c "Apagado programado por el usuario"
echo Se programó el apagado del sistema en !minutos! minutos.
pause
goto :Menu

:Fin
endlocal
