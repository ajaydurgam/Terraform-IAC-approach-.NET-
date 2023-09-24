Install-WindowsFeature -Name Web-Server -IncludeManagementTools
Install-WindowsFeature -Name Web-ASP
Install-WindowsFeature -Name Web-Net-Ext45
Install-WindowsFeature -Name Web-ISAPI-Ext
Install-WindowsFeature -Name Web-ISAPI-Filter
Install-WindowsFeature -Name Web-Mgmt-Console

Write-Output 'Downloading and installing .NET 7.0.11 Windows Hosting Bundle...'
Invoke-WebRequest -Uri https://download.visualstudio.microsoft.com/download/pr/91644a20-1e21-43c9-8ae0-90e402c1a368/469c198fab110c6c3d822e03509e9aec/dotnet-hosting-7.0.11-win.exe -OutFile C:\Users\Administrator\Downloads\dotnet-hosting-7.0.11-win.exe
Start-Process -FilePath C:/Users/Administrator/Downloads/dotnet-hosting-7.0.11-win.exe -Wait -ArgumentList /passive

# if we need of .net sdk 7.0.11 use the below to commandss 
#Invoke-WebRequest -Uri https://download.visualstudio.microsoft.com/download/pr/1c8737a4-8cf1-4251-af5f-4a9c119a2489/c42c16d1f664719564353489c2b9b8d8/dotnet-sdk-7.0.401-win-x64.exe -OutFile C:\Users\Administrator\Downloads\dotnet-sdk-7.0.11-win.exe
#Start-Process -FilePath C:/Users/Administrator/Downloads/dotnet-hosting-7.0.11-win.exe -Wait -ArgumentList /passive
net stop was /y
net start w3svc
Write-Output '.NET 7.0.11 Windows Hosting Bundle installation complete.'
