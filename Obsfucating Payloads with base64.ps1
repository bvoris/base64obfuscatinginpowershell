# Obfuscating PowerShell with Base64
# By Brad Voris
#
# Converting data to base64: 
# $encoded = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("'https://www.victimoftechnology.com'"))
# $encoded
#
# base64 encoded website being decoded as a variable
$Website = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String('JwBoAHQAdABwAHMAOgAvAC8AdwB3AHcALgB2AGkAYwB0AGkAbQBvAGYAdABlAGMAaABuAG8AbABvAGcAeQAuAGMAbwBtACcA'))
# base64 encoded process being decoded as a variable
$startprocess = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String('JwBzAHQAYQByAHQALQBwAHIAbwBjAGUAcwBzACcA'))
# base64 encoded application being decoded as a variable
$application = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String('JwBpAGUAeABwAGwAbwByAGUALgBlAHgAZQAnAA=='))
# trimming process of ''
$trimmedproc = $startprocess.Trim("'")
# run base64 decoded variables
powershell.exe $trimmedproc "$application" $website