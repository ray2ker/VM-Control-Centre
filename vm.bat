@echo off

REM Define VM paths
set serveraPath=H:\VM\cloned\servera.vmx
set workstationPath=C:\Users\Rayhan_Sarker\Music\VM\workstation.vmx
set serverbPath=H:\VM\serverb\serverb.vmx

REM Check the first argument for the operation (suspend, start, stop, reboot)
REM Check the second argument for the VM identifier (servera, workstation, serverb)

if "%1"=="suspend" (
    if "%2"=="servera" vmrun -T ws suspend "%serveraPath%" nogui
    if "%2"=="workstation" vmrun -T ws suspend "%workstationPath%" nogui
    if "%2"=="serverb" vmrun -T ws suspend "%serverbPath%" nogui
)

if "%1"=="start" (
    if "%2"=="servera" vmrun -T ws start "%serveraPath%" nogui
    if "%2"=="workstation" vmrun -T ws start "%workstationPath%" nogui
    if "%2"=="serverb" vmrun -T ws start "%serverbPath%" nogui
)

if "%1"=="stop" (
    if "%2"=="servera" vmrun -T ws stop "%serveraPath%" soft
    if "%2"=="workstation" vmrun -T ws stop "%workstationPath%" soft
    if "%2"=="serverb" vmrun -T ws stop "%serverbPath%" soft
)

if "%1"=="reboot" (
    if "%2"=="servera" vmrun -T ws reset "%serveraPath%" soft
    if "%2"=="workstation" vmrun -T ws reset "%workstationPath%" soft
    if "%2"=="serverb" vmrun -T ws reset "%serverbPath%" soft
)

echo Operation %1 completed for %2.
vmrun -T ws list
