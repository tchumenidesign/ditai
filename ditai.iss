; Instalador do Ditaí (Inno Setup 6)
#ifndef MyAppVersion
  #define MyAppVersion "1.0.0"
#endif

[Setup]
AppId={{8F2C6B1E-4D7A-4C2B-9E31-5A7D0C3F9B42}
AppName=Ditaí
AppVersion={#MyAppVersion}
AppVerName=Ditaí {#MyAppVersion}
AppPublisher=Ditaí
DefaultDirName={localappdata}\Programs\Ditai
DisableProgramGroupPage=yes
DisableDirPage=yes
PrivilegesRequired=lowest
OutputDir=Output
OutputBaseFilename=Ditai-Setup
SetupIconFile=ditai.ico
UninstallDisplayIcon={app}\Ditai.exe
UninstallDisplayName=Ditaí
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
AppMutex=DitaiAppMutex
CloseApplications=yes

[Languages]
Name: "pt"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na Área de Trabalho"; GroupDescription: "Atalhos:"
Name: "startup"; Description: "Abrir o Ditaí automaticamente quando o Windows ligar"; GroupDescription: "Inicialização:"

[Files]
Source: "dist\Ditai\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\Ditaí"; Filename: "{app}\Ditai.exe"
Name: "{autodesktop}\Ditaí"; Filename: "{app}\Ditai.exe"; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "Ditai"; ValueData: """{app}\Ditai.exe"""; Tasks: startup; Flags: uninsdeletevalue

[Run]
Filename: "{app}\Ditai.exe"; Description: "Abrir o Ditaí agora"; Flags: nowait postinstall skipifsilent
