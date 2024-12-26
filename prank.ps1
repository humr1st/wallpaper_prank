$client = new-object System.Net.WebClient

$client.DownloadFile(\"https://tr3.cbsistatic.com/hub/i/2014/05/15/f8964afd-bd82-4e0e-bcbe-e927363dcdc1/3b858e39e2cf183b878f54cad0073a67/codedoge.jpg\" , \"doge.jpg\")
reg add \"HKCU\\Control Panel\\Desktop\" /v WallPaper /d \"%USERPROFILE%\\doge.jpg\" /f

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
