# Указываем URL изображения
$ImageUrl = "https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/383px-Flag_of_Russia.svg.png"

# Путь для сохранения изображения
$ImagePath = "$env:USERPROFILE\putin.jpg"

# Скачиваем изображение
$client = New-Object System.Net.WebClient
$client.DownloadFile($ImageUrl, $ImagePath)

# Изменяем настройки реестра для обоев
$regKey = "HKCU\Control Panel\Desktop"
$regValue = "Wallpaper"
Set-ItemProperty -Path $regKey -Name $regValue -Value $ImagePath

# Применяем изменения
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters

Write-Host "Обои установлены: $ImagePath"
