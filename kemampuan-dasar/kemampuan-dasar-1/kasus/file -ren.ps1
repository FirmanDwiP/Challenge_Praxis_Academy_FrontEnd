Get-ChildItem -Path D:\Program\Ujian\praxis-academy -Recurse -Force -Include *.bat
|
Write-host "File ditemukan, apakah mau ganti nama (Default=No)"
$Readhost = Read-Host " ( y / n ) "
witch ($ReadHost)
{
  Y {Write-host "Yes,Ganti Nama"; $PublishSettings=$true | Rename-Item -NewName { $_.Name -replace '\.bat' }}
  N {Write-Host "No,Proses Dilanjutkan"; $PublishSettings=$false}
  Default {Write-Host "Default, Skip "; $PublishSettings=$false}
} 