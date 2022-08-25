powershell -Command "[Environment]::GetFolderPath('MyDocuments') | Out-File 'docspath.tmp' -Encoding ascii"
set /p DOCSPATH=< docspath.tmp
del docspath.tmp
DEL /S /Q "%DOCSPATH%\Paradox Interactive\Victoria II\gfx"
DEL /S /Q "%DOCSPATH%\Paradox Interactive\Victoria II\map"
DEL /S /Q "%DOCSPATH%\Paradox Interactive\Victoria II\AMP_HRT\gfx"
DEL /S /Q "%DOCSPATH%\Paradox Interactive\Victoria II\AMP_HRT\map"
DEL /S /Q "%DOCSPATH%\Paradox Interactive\Victoria II\AMP_HRT1\gfx"
DEL /S /Q "%DOCSPATH%\Paradox Interactive\Victoria II\AMP_HRT1\map"
TIMEOUT 3