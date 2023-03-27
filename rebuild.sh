cp /etc/nixos/configuration.nix ~/configuration_backup.nix
cd config
sudo cp configuration.nix /etc/nixos/configuration.nix

nixos-rebuild switch
