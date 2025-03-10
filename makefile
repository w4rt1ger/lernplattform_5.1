.PHONY: all install_node install_npm install_python check_python_version start_server generate_json open_browser

all: install_node install_npm install_python check_python_version generate_json open_browser start_server
install: install_node install_npm install_python check_python_version
learn: generate_json open_browser start_server


install_node:
	powershell -Command "$$env:Path += ';C:\Program Files (x86)\GnuWin32\bin;C:\Program Files\nodejs'; [System.Environment]::SetEnvironmentVariable('Path', $$env:Path, [System.EnvironmentVariableTarget]::User)"
	powershell -Command "Invoke-WebRequest -Uri 'https://nodejs.org/dist/v16.13.0/node-v16.13.0-x64.msi' -OutFile 'node-v16.13.0-x64.msi'"
	powershell -Command "Start-Process -FilePath 'node-v16.13.0-x64.msi' -ArgumentList '/quiet' -Wait"

install_npm:
	powershell -Command "npm install xlsx"

install_python:
	powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe' -OutFile 'python-3.11.5-amd64.exe'"
	powershell -Command "Start-Process -FilePath 'python-3.11.5-amd64.exe' -ArgumentList '/quiet InstallAllUsers=1 PrependPath=1' -Wait"

check_python_version:
	powershell -Command "py --version"

generate_json:
	node .\excel_to_json.js

open_browser:
	powershell -Command "Start-Process 'http://localhost:8000'"
	
start_server:
	powershell -Command "Start-Process -NoNewWindow -FilePath 'powershell' -ArgumentList 'py -m http.server 8000'"
