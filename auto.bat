@echo off
(
echo Set-ExecutionPolicy RemoteSigned > script.ps1
echo $caminhoRegistro = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" >> script.ps1
echo $nomeValor = "ProductId" >> script.ps1
echo $aleatorio = Get-Random -Minimum 0 -Maximum 5000 >> script.ps1
echo $aleatorio2 = Get-Random -Minimum 0 -Maximum 8000 >> script.ps1
echo $novoValor = "$aleatorio2-41Z79-03200-S6$aleatorio" >> script.ps1
echo Set-ItemProperty -Path $caminhoRegistro -Name $nomeValor -Value $novoValor >> script.ps1
echo Stop-Process -Name "WmiPrvSE" -Force >> script.ps1
powershell -ExecutionPolicy Bypass -File script.ps1
del C:\Users\script.ps1
) > C:\Users\script.ps1
del script.ps1

cd C:\Users\%username%\AppData\Local\Temp\U2FsdGVkX1\1Da29W7l84CTfxCEyN+59l2Mi8kfW4dQ=
start setup.exe 1.sys
