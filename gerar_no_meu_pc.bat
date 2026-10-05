@echo off
REM Gera o instalador no seu proprio Windows (alternativa ao GitHub).
REM Requer: Python com PATH e Inno Setup 6 (jrsoftware.org/isdl.php).
cd /d "%~dp0"
python -m pip install -r requirements.txt pyinstaller || goto erro
pyinstaller --noconfirm --clean --windowed --name Ditai --icon ditai.ico --add-data "ditai.ico;." --hidden-import pystray._win32 ditai.py || goto erro
"%ProgramFiles(x86)%\Inno Setup 6\ISCC.exe" ditai.iss || goto erro
echo.
echo Pronto! Instalador em: %~dp0Output\Ditai-Setup.exe
explorer Output
pause
exit /b 0
:erro
echo.
echo Algo deu errado. Veja a mensagem acima.
pause
