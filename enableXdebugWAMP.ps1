
$newLines = "xdebug.remote_enable = 1" + [Environment]::NewLine + "xdebug.remote_autostart = 1"
$file = 'C:\wamp64\bin\apache\apache2.4.33\bin\php.ini'
$replace = 'xdebug.remote_enable = off'

$content = Get-Content $file
$content = $content -replace $replace , $newLines
$content | Set-Content $file