del *.log 
powershell -Command "Remove-Item '.\TestResults\*' -Recurse -Force"
java -jar ./Dependencies/ssp/modulerunner.jar %CD%

