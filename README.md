# VM-Control-Centre
Control VM guest OS via Windows PowerShell.

add this bat file in any environment path. or copy the bat file in VM location "C:\Program Files (x86)\VMware\VMware Workstation" and add the below command.

 $env:PATH += ";C:\Program Files (x86)\VMware\VMware Workstation"

this will help you to run commands like this 
>vm start workstation

note: The first argument is for the operation (suspend, start, stop, reboot) and the second argument is for the VM identifier (servera, workstation, server) as my guest OS.

see the attached Photo.
![VM-control-centre](https://github.com/ray2ker/VM-Control-Centre/assets/19851004/3d980738-d7c3-4584-8417-c980000fce3e)

from the VM.bat file change the location of your Guest OS locations.
If you want to view the VM window remove the 'nogui' from the commands, i made it run in background mode.

Happy Coding!
