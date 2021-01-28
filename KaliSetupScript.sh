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

git commit;git push
=======================
Edit ZSHRC for Box Automation
=======================




=======
Vulscan DB
=========
git clone https://github.com/scipag/vulscan scipag_vulscan
sudo ln -s `pwd`/scipag_vulscan /usr/share/nmap/scripts/vulscan    

eg:nmap -sV --script=vulscan/vulscan.nse www.example.com

============
NMAP
============
nmap -sC -sV -p0-p1000 $1 > result1.txt &
nmap -sV --script=vulscan/vulscan.nse $1 > result2.txt &
