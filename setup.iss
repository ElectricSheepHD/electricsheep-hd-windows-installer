; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Electric Sheep HD"
#define MyAppVersion "20180512"
#define MyAppPublisher "Electric Sheep HD"
#define MyAppURL "https://sheeps.triple6.org"
#define GitDir "electricsheep-hd-client-master"
#define BlobDir "git+flam3+ruby"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4914324E-3650-433D-8127-3D98A5DA489D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE.txt
InfoBeforeFile=BEFORE.txt
InfoAfterFile=AFTER.txt
OutputBaseFilename=Electric Sheep HD Installer
SetupIconFile={#GitDir}\logo.ico
Compression=lzma2
SolidCompression=yes
;WizardImageFile={#GitDir}\logo.bmp
WizardSmallImageFile={#GitDir}\logo.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{app}"; Permissions: users-full

[Files]
Source: "{#GitDir}\*"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BlobDir}\*"; DestDir: "{app}\{#BlobDir}\"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{group}\daemon"; Filename: "{app}\daemon_windows.cmd"; IconFilename: "{app}\logo.ico"
Name: "{group}\play"; Filename: "{app}\play_windows.cmd"; IconFilename: "{app}\logo.ico"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
