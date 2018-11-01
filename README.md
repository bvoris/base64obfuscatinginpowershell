# base64obfuscatinginpowershell
Using base64 to obfuscate processes and commands in PowerShell

Obfuscating PowerShell with Base64
By Brad Voris

Converting data to base64 to obfuscate: 
$encoded = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("'https://www.victimoftechnology.com'"))
$encoded
