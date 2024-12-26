$client = new-object System.Net.WebClient

$client.DownloadFile("https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/383px-Flag_of_Russia.svg.png" , "doge.jpg")
reg add "HKCU\\Control Panel\\Desktop\" /v WallPaper /d "%USERPROFILE%\\doge.jpg" /f 

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
