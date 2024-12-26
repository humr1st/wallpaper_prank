# URL изображения
$ImageUrl = "https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/383px-Flag_of_Russia.svg.png"

# Путь для сохранения изображения на компьютере
$ImagePath = "$env:USERPROFILE\putin.jpg"

# Скачивание изображения
$client = New-Object System.Net.WebClient
$client.DownloadFile($ImageUrl, $ImagePath)

# Установка обоев через реестр
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d $ImagePath /f

# Обновление обоев
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

