@echo off

echo --------------------------------------------------------------- > audit.txt
echo Audit runned on %DATE% at %TIME% by %username% >> audit.txt
echo --------------------------------------------------------------- >> audit.txt

echo User:	%computername% >> audit.txt
echo images found on: %DATE% at %TIME& in %computername% by %username% > imagesFound.txt
dir /s /b *.png, *.jpeg >> imagesFound.txt
echo ------------------------------------------------------------------- >> imagesFound.txt

echo Programs found on: %DATE% at %TIME& in %computername% by %username% > exeFound.txt
dir /s /b *.exe, *.bat, *.cmd >> exeFound.txt
echo ------------------------------------------------------------------- >> exeFound.txt

echo Archives found on: %DATE% at %TIME& in %computername% by %username% > pdfFound.txt
dir /s /b *.pdf >> pdfFound.txt
echo ------------------------------------------------------------------- >> pdfFound.txt

echo Media found on: %DATE% at %TIME& in %computername% by %username% > videoFound.txt
dir /s /b *.mkv, *.mov, *.avi, *.mp4, *.wmv >> videoFound.txt
echo ------------------------------------------------------------------- >> videoFound.txt

echo Docs found on: %DATE% at %TIME& in %computername% by %username% > officeDocsFound.txt
dir /s /b *.xls, *.doc, *.ppt, *.csv >> officeDocsFound.txt
echo ------------------------------------------------------------------- >> officeDocsFound.txt

type imagesFound.txt >> audit.txt
type exeFound.txt >> audit.txt
type pdfFound.txt >> audit.txt
type videoFound.txt >> audit.txt
type officeDocsFound.txt >> audit.txt

xcopy /S /E /F Pruebas Backup\
pause > null