# REQUIREMENTS

We need to install following Dislocker Dependencies:

- Compiler, gcc or clang;
- cmake (at least version 2.6);
- make (or gmake, for FreeBSD);
- Headers for FUSE;
- Headers for mbedTLS (previously known as PolarSSL);
- A partition encrypted with BitLocker, from Windows Vista, 7 ,8 or 10.


Step # 1: Download Disklocker and Extract it where ever you want in Kali Linux
tar xvf dislocker-0.7.1.tar.gz

Step # 2: Adding Kali sana (2.0) Repositories in Kali
(vim \etc\apt\sources.list) because one of the main Dislocker Dependency package "libpolarssl-dev" included in Sana (2.0)

Step # 3: Update the APT Repositories
apt-get install update  

Step # 4: Installation of All the Dependencies of Dislocker on Kali Linux
apt-get install git gcc cmake make libfuse-dev libpolarssl-dev ruby-dev

Step # 5: Clone an existing Git Repository for Headers of FUSE and mbedTLS
git clone https://github.com/Aorimn/dislocker.git

Step # 6: Install All the binaries on Kali Linux OS
ls
cmake .
make
make install

Step # 7: Make two folders in Media one for dislocker-file (Temp) and other one is for mounting the bitlocker volume
cd /media
mkdir Temp
mkdir Mounted

Step # 8: Look for Windows Bitlocker Partition Information in Kali Linux or Ubuntu Linux
fdisk -l 

Step # 9: Decrypting a BitLocker encrypted partition into a flat file formatted as an NTFS partition you can mount
dislocker -r -V /dev/sda -pRecovery-Key -- /media/Temp/

Step # 10: Finally,Its time to mount the Windows 10 Bitlocker Drive in Kali Linux OS
mount -o loop Temp/dislocker-file Mounted/

PS: If you have any issue while performing above tasks please do let us know !

Cheers :)
