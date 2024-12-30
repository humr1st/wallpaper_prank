# Set the path to the image
$imagePath = "\%USERPROFILE%\doge.png"

# Check if the file exists
if (Test-Path $imagePath) {
    # Change the desktop background
    Add-Type -TypeDefinition @"
    using System;
    using System.Runtime.InteropServices;
    public class Wallpaper {
        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
    }
"@

    [Wallpaper]::SystemParametersInfo(20, 0, $imagePath, 0x01 -bor 0x02)
    Write-Host "Background changed to $imagePath"
} else {
    Write-Host "File $imagePath not found!"
}
