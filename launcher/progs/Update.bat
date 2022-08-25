powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Gone2Daly/AMP/archive/refs/heads/main.zip', 'main.zip')"
powershell -Command "Invoke-WebRequest https://github.com/Gone2Daly/AMP/archive/refs/heads/main.zip -OutFile main.zip"
powershell -Command "Get-ChildItem . -Filter main.zip | Expand-Archive -DestinationPath . -Force"
XCOPY "%cd%\AMP-main" "%cd%" /S /Y /EXCLUDE:"Launch AMP.exe"
RMDIR "%cd%\AMP-main" /Q /S
DEL "%cd%\main.zip" /Q
TIMEOUT 3