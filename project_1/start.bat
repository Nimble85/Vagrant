echo Start bat file
rem mkdir -p "C:/Users/vagrant/Desktop/bash";
rem choco upgrade chocolatey
echo Install some software!
rem choco install notepadplusplus.install git.install msdeploy3 sql-server-management-studio microsoft-build-tools -y
echo Upgrade some software!
rem choco upgrade notepadplusplus.install git.install msdeploy3 sql-server-management-studio microsoft-build-tools -y


echo "Перенос проэкта IIS"
rem c: 
rem cd C:\inetpub\
rem rmdir /s /q C:\inetpub\wwwroot
mkdir "C:\inetpub\wwwroot"
xcopy "C:\vagrant\web\WebApplication1\WebApplication1" "C:\inetpub\wwwroot"  /H /Y /C /R /S 


rem echo d | xcopy /f /d /y "C:\vagrant\web\WebApplication1\WebApplication1" "C:\inetpub\wwwroot\"
