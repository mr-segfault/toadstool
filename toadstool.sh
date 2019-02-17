#!/bin/sh
#apt-get update && apt-get upgrade;

echo "        __.....__		";
echo "     .'' _  o    ''.	";
echo "   .' O (_)     () o'.	";
echo "  .           O       .	";
echo " . ()   o__...__    O  .	";
echo ". _.--'''       ''''--._ .";
echo ":'                     ';	";
echo " '-.__    :   :    __.-'	";
echo "      '''-:   :-''	";
echo "         J     L		";
echo "         :     :		";
echo "        J       L		";
echo "        :       :		";
echo "        '._____.' 	";
echo "  ---- Toadstool v.01 	";

# Kali Tools
echo "Downloading Kali Tools";
git clone https://github.com/LionSec/katoolin.git && sudo cp katoolin/katoolin.py /usr/bin/katoolin;
chmod +x /usr/bin/katoolin;

# Binary Analysis Tools
# Veles - 2018.05

wget https://github.com/codilime/veles/releases/download/2018.05.0.TIF/Veles_2018.05_64bit_Ubuntu1604.deb;
sudo dpkg -i Veles_2018.05_64bit_Ubuntu1604.deb;

echo "************** INSTALLING *****************";
echo "             -- ctf-tools --               ";
echo "from https://github.com/zardus/ctf-tools.git";
echo "*******************************************";
git clone https://github.com/zardus/ctf-tools.git; 
echo "************** INSTALLING *****************";
echo "             -- pwntools --                ";
echo "from https://github.com/Gallopsled/pwntools";
echo "*******************************************";
echo " ///// Installing Required Packages //////";
echo " ///   for pwntools                   ///";
apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential;
pip install --upgrade pip;
echo " ==== Installing pwntools ==== ";
pip install --upgrade pwntools;
echo "************** INSTALLING *****************";
echo "            -- RSA CTF Tool --             ";
echo "from https://github.com/Ganapati/RsaCtfTool";
echo "*******************************************";
git clone https://github.com/Ganapati/RsaCtfTool.git
echo " ///// Installing Required Packages //////";
echo " ///   for RSA CTF Tool                ///";
sudo apt-get install libgmp3-dev libmpc-dev;
cd RsaCtfTool/;
pip install -r "requirements.txt";
cd ../;
echo "## SUCCESS: RSA CTF Tool ready to use ##";
echo "--> launch with: python2.7 RsaCtfTool.py";
echo "************** INSTALLING *****************";
echo "            -- shellpop --             	 ";
echo "from https://github.com/0x00-0x00/shellpop ";
echo "*******************************************";
git clone https://github.com/0x00-0x00/ShellPop.git
cd ShellPop;
echo " ///// Installing Required Packages //////";
echo " ///   for ShellPop                ///";
apt-get install python-argcomplete metasploit-framework -y;
pip install -r requirements.txt;
python setup.py install;
echo "## SUCCESS: ShellPop ##";
echo "--> launch with: shellpop";
echo "restart terminal to get autocomplete";
echo "************** INSTALLING *****************";
echo "                -- isf --             	 ";
echo "from https://github.com/dark-lbp/isf	 ";
echo "*******************************************";
git clone https://github.com/dark-lbp/isf/;
cd isf;
pip install -r "requirements.txt";
echo "## SUCCESS: isf ##";
echo "--> launch with: python isf.py";
echo "************** INSTALLING *****************";
echo "             -- ida demo --             	 ";
echo "from https://out7.hex-rays.com/files/idafree70_linux.run ";
echo "*******************************************";
wget -c https://out7.hex-rays.com/files/idafree70_linux.run; 
chmod +x idafree70_linux.run;
./idafree70_linux.run;
echo "## SUCCESS: ida ##";
echo "************** INSTALLING *****************";
echo "             -- pyrebox --             	 ";
echo "from https://github.com/Cisco-Talos/pyrebox/ ";
echo "*******************************************";
git clone https://github.com/Cisco-Talos/pyrebox.git;
cd pyrebox;
echo " ///// Installing Required Packages //////";
echo " ///   for pyrebox                ///";
sudo apt-get install build-essential zlib1g-dev pkg-config libglib2.0-dev binutils-dev libboost-all-dev autoconf libtool libssl-dev libpixman-1-dev libpython-dev python-pip virtualenv python-capstone; 
./build.sh;
cd ../;
echo "************** INSTALLING *****************";
echo "       -- unix privesc check --        	 ";
echo "from https://github.com/Cisco-Talos/pyrebox/ ";
echo "*******************************************";
git clone https://github.com/pentestmonkey/unix-privesc-check.git;
echo "## SUCCESS: unix privesc checker  ##";
echo "--> launch with: ./upc.sh";

echo "************** INSTALLING *****************";
echo "     		 -- Hwacha --        	 ";
echo "from https://github.com/n00py/Hwacha/ ";
echo "*******************************************";
git clone https://github.com/n00py/Hwacha.git;
pip install paramiko;
echo "## SUCCESS: Hwacha  ##";
echo "--> launch with: python hwacha.py "

echo "************** INSTALLING *****************";
echo "     	 -- Shellter --        	 ";
echo "from https://www.shellterproject.com/ ";
echo "*******************************************";
sudo apt-get install shellter;

echo "************** INSTALLING *****************";
echo "     	 -- Avet --        	 ";
echo "from https://github.com/govolution/avet ";
echo "*******************************************";
git clone https://github.com/govolution/avet.git;
cd avet;
./install.sh;
echo "## SUCCESS: Hwacha  ##";
echo "--> launch with: python hwacha.py "

echo "You can install Kali tools with: sudo katoolin";
echo "You can install CTF tools individually by navigating to ctf-tools/";


# Frida
pip install frida-tools;

#apt-get install <package name> -y