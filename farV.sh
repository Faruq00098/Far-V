#!/bin/bash
Black='\033[1;30m'        # Black
Red='\033[1;31m'          # Red
Green='\033[1;32m'        # Green
Yellow='\033[1;33m'       # Yellow
Blue='\033[1;34m'         # Blue
Purple='\033[1;35m'       # Purple
Cyan='\033[1;36m'         # Cyan
White='\033[1;37m'        # White
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'
brown='\033[0;33m'

logo () {
echo -e "\033[1,32m \t

\t_____            __     __
\t|  ___|_ _ _ __   \ \   / /
\t| |_ / _` | '__|___\ \ / /
\t|  _| (_| | | |_____\ V /
\t|_|  \__,_|_|        \_/
";
}
actions () {
        echo -e "${Purple}[~] Available Actions to perform are:"
        echo ""

        echo -e "${Cyan}[1]  Whois"        #whois
        echo -e "${Cyan}[2]  Nping"        #nping
        echo -e "${Cyan}[3]  Subdomains"   #hostsearch
        echo -e "${Cyan}[4]  DNSLookup"    #dnslookup
        echo -e "${Cyan}[5]  ReverseDNS"   #reversedns
        echo -e "${Cyan}[6]  Traceroute"   #mtr
        echo -e "${Cyan}[7]  HTTPHeaders"  #httpheaders
        echo -e "${Cyan}[8]  PageLinks"    #pagelinks
        echo -e "${Cyan}[9]  ZoneTransfer" #zonetransfer
        echo -e "${Cyan}[10] GeoIP"        #geoip
        echo -e "${Cyan}[11] SubnetCalc"   #subnetcalc
        echo -e "${Cyan}[12] Nmap"         #nmap
        echo -e "${Cyan}[13] SharedDNS"    #findshareddns
        echo -e "${Yellow}[14] All of the Above"
        echo -e "${Red}[Q]  Exit"
  input () {
        echo -ne "${Green}[#] Enter Hostname: ${White}"
        read hostname;
}
whois () {
        #input
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}Whois${Yellow}]${Blu>
        echo -e "${Blue}+--------------------------------+${White}"
        curl https://api.hackertarget.com/whois/?q=$hostname --connect-time>
}
nping () {
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}NPing${Yellow}]${Blu>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/nping/?q=$hostname --connect-time>

}
subdomains () {
        #input
        #echo -e "${Red}------------------------------------${white}"

        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}Subdomains${Yellow}]${B>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/hostsearch/?q=$hostname --connect>
}
dnslookup () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+          ${Yellow}[${Green}DNSlookup${Yellow}]${B>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/dnslookup/?q=$hostname --connect->
}
reversedns () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}reverseDNS${Yellow}]${B>
        echo -e "${Blue}+--------------------------------+${White}"
        ip=$(curl https://api.hackertarget.com/hostsearch/?q=$hostname --co>
        curl https://api.hackertarget.com/reversedns/?q=$ip --connect-timeo>

}
traceroute () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}Traceroute${Yellow}]${B>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/mtr/?q=$hostname --connect-timeou>

}
httpheaders () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+        ${Yellow}[${Green}HTTPHeaders${Yellow}]${B>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/httpheaders/?q=$hostname --connec>

}
pagelinks () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+         ${Yellow}[${Green}PageLinks${Yellow}]${Bl>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/pagelinks/?q=$hostname --connect->

}
zonetransfer () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+        ${Yellow}[${Green}Zonetransfer${Yellow}]${>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/zonetransfer/?q=$hostname --conne>

}
geoip () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}GeoIP${Yellow}]${Blu>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/geoip/?q=$hostname --connect-time>

}
subnetcalc () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+          ${Yellow}[${Green}SubnetCalc${Yellow}]${>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/subnetcalc/?q=$hostname --connect>

}
Nmap () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+            ${Yellow}[${Green}Nmap${Yellow}]${Blue>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/nmap/?q=$hostname --connect-timeo>

}
shareddns () {
        #input
        #echo -e "${Red}------------------------------------${white}"
        echo
        echo -e "${Blue}+--------------------------------+${White}"
        echo -e "${Blue}+          ${Yellow}[${Green}SharedDNS${Yellow}]${B>
        echo -e "${Blue}+--------------------------------+${White}"

        curl https://api.hackertarget.com/findshareddns/?q=$hostname --conn>

}
alloftheabove (){
        whois
        nping
        subdomains
        dnslookup
        reversedns
        traceroute
        httpheaders
        pagelinks
        zonetransfer
        geoip
        subnetcalc
        Nmap
        shareddns

}

clear
logo
actions
echo ""
echo -ne "${Green}[#] Enter your choice: ${White}"
read ch
case  $ch  in

    1)
        input
        whois ;;

    2)
        input
        nping ;;

    3)
        input
        subdomains ;;

    4)
    input
        dnslookup ;;

    5)
        input
        reversedns ;;

    6)
        input
        traceroute ;;

    7)
        input
        httpheaders ;;

    8)
        input
        pagelinks ;;

    9)
        input
        zonetransfer ;;

    10)
        input
        geoip ;;

    11)
        input
        subnetcalc ;;

    12)
        input
        Nmap ;;

    13)
        input
        shareddns ;;

    14)
        input
        alloftheabove ;;

    Q)
        echo -e "${Cyan}[*] Exiting..."
        sleep 0.2
        exit;
        
        * )
    echo -e "${Cyan}[*] INVALID OPTION"
    sleep 0.2
    echo -e "${Cyan}[*] Exiting..."
    sleep 0.2
    exit ;;

esac