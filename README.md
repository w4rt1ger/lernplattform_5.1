Activate Make files:
Make sure choco is installed:
PS als ADMIN:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Install make:
choco install make




npm install xlsx
Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe -OutFile python-3.11.5-amd64.exe
Start-Process -FilePath "python-3.11.5-amd64.exe" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait
py --version
python -m http.server 8000
node .\excel_to_json.js

