.PHONY: all install_node install_npm install_python check_python_version start_server generate_json

all: install_node install_npm install_python check_python_version start_server generate_json

install_node:
	powershell -Command "Invoke-WebRequest -Uri 'https://nodejs.org/dist/v16.13.0/node-v16.13.0-x64.msi' -OutFile 'node-v16.13.0-x64.msi'"
	powershell -Command "Start-Process -FilePath 'node-v16.13.0-x64.msi' -ArgumentList '/quiet' -Wait"

install_npm:
	powershell -Command "npm install xlsx"

install_python:
	powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe' -OutFile 'python-3.11.5-amd64.exe'"
	powershell -Command "Start-Process -FilePath 'python-3.11.5-amd64.exe' -ArgumentList '/quiet InstallAllUsers=1 PrependPath=1' -Wait"

check_python_version:
	powershell -Command "py --version"

start_server:
	powershell -Command "Start-Process -NoNewWindow -FilePath 'powershell' -ArgumentList 'py -m http.server 8000'"

generate_json:
	node .\excel_to_json.js