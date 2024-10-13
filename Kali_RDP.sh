echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
clear
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address: tcp://B24B-37058.portmap.host:37058 => 2424"
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support akuh.net thank you"
echo "Wait 1 minute to finish bot"
echo "===================================="
echo "===================================="
docker run --rm -p 2424:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
