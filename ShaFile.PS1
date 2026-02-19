function Get-FileSHA1($filePath) {
    $fileContent = Get-Content $filePath
    $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)
    
    $sha1 = New-Object System.Security.Cryptography.SHA1Managed

    $hash = $sha1.ComputeHash($fileBytes)
    Write-Host $hash -BackgroundColor Red -ForegroundColor Yellow
}
Get-FileSHA1 C:\Dataprev\Cursos\PowerShell\Script\ShaFile.PS1
