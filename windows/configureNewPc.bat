REM Installation procedure for new Windows Desktop machine

echo Install chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo Installing developer tools
choco install -y git
choco install -y sourcetree
choco install -y atom
choco install -y notepadplusplus.install


choco install -Y jdk8
choco install -Y maven
choco install -y intellijidea-community

choco install -y nodejs.install

choco install -y golang

REM choco install -y virtualbox
REM choco install -y vagrant

choco install -y googledrive

choco install -y putty.install
choco install -y paint.net

choco install -y slack

choco install -u adobereader