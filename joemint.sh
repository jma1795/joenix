#!/bin/bash

echo "*********************************"
echo "*Joe's NixOS customization script*"
echo "*********************************"
bash date.sh
bash sysinfo2.sh

PS3='Choose Script to run: '
setup=("Post-Install" "Software Extras" "Laptop Power Management" "Firewall" "Audio" "Theme" "Quit")
select fav in "${setup[@]}"; do
    case $fav in
        "Post-Install")
            echo "***Running $fav script***"
	    #Run Script
        bash mint-post-install.sh
	    break
            ;;
        "Software Extras")
            echo "***Running $fav script***"
	    #Run Script
        bash more-packages.sh
	    break
            ;;
        "Laptop Power Management")
            echo "***Running $fav script***"
	    #Run Script
        bash laptop-power.sh
	    break
            ;;
        "Firewall")
            echo "***Running $fav script***"
	    #Run Script
        bash firewall.sh
	    break
            ;;
        "Gaming")
            echo "***Running $fav script***"
	    #Run Script
        bash gaming.sh
	    break
            ;;
        "Theme")
            echo "***Running $fav script***"
	    #Run Script
        bash theme.sh
	    break
            ;;
	"Quit")
	    echo "***Program Terminated***"
	    exit
	    ;;
        *) echo "***invalid option $REPLY***";;
    esac
done
