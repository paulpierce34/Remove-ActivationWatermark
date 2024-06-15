## Disable Windows Activation Watermark for Windows 10 and 11

$RegKeyPath = "HKCU:\Control Panel\UnsupportedHardwareNotificationCache"

if (Get-ItemProperty -Path $RegKeyPath){

Set-ItemProperty -Path $RegKeyPath -Name "SV2" -Value 0
write-host -foregroundcolor Cyan "Registry Key has been set. Rebooting system in 10 seconds. Press CTRL+C to abort reboot."
Start-Sleep 10
Restart-Computer

}
else {

write-host "Expected path: $RegKeyPath does not exist. This script will not work."

}