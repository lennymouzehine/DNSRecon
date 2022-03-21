# # # # # # # # # # # # # # # # # 
#
#
#   !/bin/env bash
#
#
#   DNSRecon with Dig by Lenny Mouzehine
#
#
# # # # # # # # # # # # # # # # # 


read -p "Type the domain: " domain

while true; do

    clear
    menu="
\\t1) SOA
\\t2) IP
\\t3) MX
\\t4) NS
\\t5) TXT
\\t6) ANY
\\t99) QUIT"

    echo -e "\n   \033[32;1m+ - [ DNS RECON with DIG ] - +\033[m"
    echo -e "         \033[32;1mDomain: $domain\033[m"
    echo -e "$menu"
    read -p "
    Select one of the option: " -n 1 op

    case $op in
        '1') echo -e "\n    SOA selected\n"; dig SOA $domain +short ;;
        '2') echo -e "\n    IP selected\n"; dig -t A $domain +short ;;
        '3') echo -e "\n    MX selected\n"; dig MX $domain +short ;;
        '4') echo -e "\n    NS selected\n"; dig NS $domain +short ;; 
        '5') echo -e "\n    TXT selected\n"; dig TXT $domain +short ;;
        '6') echo -e "\n    ANY selected\n"; dig ANY $domain ;;
        '9') echo -e "\n    Returning...\n"; exit ;;
        *) echo -e "\n  Invalid option!\n" ;;
    esac

    echo -e "\nPress enter to return menu"
    read enter -n 1

done
