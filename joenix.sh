echo "********************"
echo "*Joe's NixOS script*"
echo "********************"

echo "                                             "
echo "*********************************************"
echo "You are Apart of the Following Channel:"
sudo nix-channel --list
echo "*********************************************"

PS3='Choose Script to run: '
setup=("Check Updates" "Run Updates" "Rollback" "Load Config Changes" "Quit")
select fav in "${setup[@]}"; do
    case $fav in
        "Check Updates")
           echo "***Running $fav script***"
            sudo nix-channel --update
            sudo nixos-rebuild dry-run
            nix store diff-closures /run/*-system
exit 0
            ;;
        "Run Updates")
            echo "***Running $fav script***"
    nixos-rebuild switch --upgrade
echo "***Reboot to complete updates***"
exit 0
            ;;
        "Rollback")
            echo "***Running $fav script***"
        nixos-rebuild switch --rollback
echo "***Reboot to complete updates***"
exit 0
            ;;
        "Load Config Changes")
            echo "***Re-$fav ***"
	    #Run Script
        nixos-rebuild switch
exit 0
            ;;
	"Quit")
	    echo "***Program Terminated***"
	    exit
	    ;;
        *) echo "***invalid option $REPLY***";;
    esac
done
