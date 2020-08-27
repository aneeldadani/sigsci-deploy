( new-object System.Net.WebClient ).DownloadFile("https://dl.signalsciences.net/sigsci-agent/sigsci-agent_latest.msi", "c:\\apps\\sigsci\\agent\\sigsci-agent_latest.msi")
C:\Apps\sigsci\agent\sigsci-agent_latest.msi /quiet
sleep 60
net stop sigsci-agent
net start sigsci-agent
sleep 30
iisreset
