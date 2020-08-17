( new-object System.Net.WebClient ).DownloadFile("https://dl.signalsciences.net/?prefix=sigsci-module-iis/sigsci-module-iis_latest.msi", "c:\\apps\\sigsci\\module\\sigsci-module-iis_latest.msi")
sleep 60
net stop w3svc
iisreset /stop
msiexec /i C:\Apps\sigsci\module\sigsci-module-iis_latest.msi 
sleep 60
iisreset /start
net start w3svc
sleep 30
net stop sigsci-agent
net start sigsci-agent
sleep 30
iisreset