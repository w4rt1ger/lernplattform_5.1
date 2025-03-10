winget install -e --id GnuWin32.Make
$env:Path += ";C:\Program Files (x86)\GnuWin32\bin"
[System.Environment]::SetEnvironmentVariable("Path", $env:Path, [System.EnvironmentVariableTarget]::User)

Then use the command 
- make install
- make learn

Visit makefile for more commands


Udemykurs:
https://www.udemy.com/course/lpic-1-linux-bootcamp-in-30-tagen-zum-linux-admin/

Um die Befehle auszuprobieren,
folge der Installation von Udemy,
oder installiere CentOS7 und Ubuntu auf Hyper-V