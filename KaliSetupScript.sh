=======================
GuestAddition
=======================
chmod +rwx VBoxLinux....run
sudo sh VBoxLinux....run

=======================
VSCode Installation
=======================
sudo apt update
sudo apt install curl gpg software-properties-common apt-transport-https 
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code

============================
Github Setup & Config Commands
============================
git config --global user.email "shafeekzamzam@gmail.com";git config --global user.name "Shafeek"
git push
git commit
=======================
Edit ZSHRC for Box Automation
=======================

nmap -sC -sV -p0-p1000 $1 > result1.txt &

nmap script vulscan

