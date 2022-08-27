ECHO This will fully reload game with up-to-date to latest version of AMP
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Gone2Daly/AMP/archive/refs/heads/main.zip', 'main.zip')"
powershell -Command "Invoke-WebRequest https://github.com/Gone2Daly/AMP/archive/refs/heads/main.zip -OutFile main.zip"
powershell -Command "Get-ChildItem . -Filter main.zip | Expand-Archive -DestinationPath . -Force"
XCOPY /S /Y /C "%cd%\AMP-main" "%cd%"
RMDIR /Q /S "%cd%\AMP-main"
DEL /Q "%cd%\main.zip"
TIMEOUT 3