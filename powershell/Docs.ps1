 $dir= "C:\bhdarchivos"

if(-not(Test-Path -Path $dir -PathType Container)){
 New-Item -ItemType Directory -Path $dir
 Write-Host "Directory as created"
}else{
Write-Host "Directory exist"
}

$date = Get-Date -Format "yyyy-MM-dd"

Remove-Item $dir\*.* -Force

for($i = 1; $i -le 10;$i++){

$fileName = 'Doc'+$i+'_'+$date+'txt'
New-Item -Path $dir'\'$fileName -ItemType File
Write-Host "New file created $fileName"
} 
