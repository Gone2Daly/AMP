ECHO This will update game only with latest patch
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/Gone2Daly/AMP-Patch/archive/refs/heads/main.zip', 'main.zip')"
powershell -Command "Invoke-WebRequest https://github.com/Gone2Daly/AMP-Patch/archive/refs/heads/main.zip -OutFile main.zip"
powershell -Command "Get-ChildItem . -Filter main.zip | Expand-Archive -DestinationPath . -Force"
XCOPY /S /Y /C "%cd%\AMP-Patch-main" "%cd%"
RMDIR /Q /S "%cd%\AMP-Patch-main"
DEL /Q "%cd%\main.zip"
TIMEOUT 3