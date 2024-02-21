@echo off

REM Define VM paths
set serveraPath=H:\VM\cloned\servera.vmx
set workstationPath=C:\VM\workstation.vmx
set serverbPath=H:\VM\serverb\serverb.vmx
set servercPath=H:\VM\serverc\serverc.vmx
REM change the location of your Guest OS locations

REM Check the first argument for the operation (suspend, start, stop, reboot)
REM Check the second argument for the VM identifier (servera, workstation, server)
REM If you want to view the VM window remove the 'nogui' from the commands.

if "%1"=="suspend" (
    if "%2"=="workstation" vmrun -T ws suspend "%workstationPath%" nogui
    if "%2"=="servera" vmrun -T ws suspend "%serveraPath%" nogui
    if "%2"=="serverb" vmrun -T ws suspend "%serverbPath%" nogui
    if "%2"=="serverc" vmrun -T ws suspend "%servercPath%" nogui	
    if "%2"=="all" (
	    vmrun -T ws suspend "%workstationPath%" nogui
		vmrun -T ws suspend "%serveraPath%" nogui
		vmrun -T ws suspend "%serverbPath%" nogui
		vmrun -T ws suspend "%servercPath%" nogui	
	)
)

if "%1"=="start" (
    if "%2"=="workstation" vmrun -T ws start "%workstationPath%" nogui
    if "%2"=="servera" vmrun -T ws start "%serveraPath%" nogui
    if "%2"=="serverb" vmrun -T ws start "%serverbPath%" nogui
    if "%2"=="serverc" vmrun -T ws start "%servercPath%" nogui
    if "%2"=="all" (
	    vmrun -T ws start "%workstationPath%" nogui
		vmrun -T ws start "%serveraPath%" nogui
		vmrun -T ws start "%serverbPath%" nogui
		vmrun -T ws start "%servercPath%" nogui	
	)
)

if "%1"=="stop" (
    if "%2"=="workstation" vmrun -T ws stop "%workstationPath%" soft
    if "%2"=="servera" vmrun -T ws stop "%serveraPath%" soft
    if "%2"=="serverb" vmrun -T ws stop "%serverbPath%" soft
    if "%2"=="serverc" vmrun -T ws stop "%servercPath%" soft
    if "%2"=="all" (
	    vmrun -T ws stop "%workstationPath%" nogui
		vmrun -T ws stop "%serveraPath%" nogui
		vmrun -T ws stop "%serverbPath%" nogui
		vmrun -T ws stop "%servercPath%" nogui	
	)
)

if "%1"=="reboot" (
    if "%2"=="workstation" vmrun -T ws reset "%workstationPath%" soft
    if "%2"=="servera" vmrun -T ws reset "%serveraPath%" soft
    if "%2"=="serverb" vmrun -T ws reset "%serverbPath%" soft
    if "%2"=="serverc" vmrun -T ws reset "%servercPath%" soft
    if "%2"=="all" (
	    vmrun -T ws reset "%workstationPath%" nogui
		vmrun -T ws reset "%serveraPath%" nogui
		vmrun -T ws reset "%serverbPath%" nogui
		vmrun -T ws reset "%servercPath%" nogui	
	)
)


echo Operation %1 completed for %2.
vmrun -T ws list
