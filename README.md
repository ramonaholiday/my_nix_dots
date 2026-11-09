# my_nix_dots

These are the files associated with my NixOS configurations.

# General info (for myself)

  1. GD Newgrounds songs are held in directory: ~/.local/share/Steam/steamapps/compatdata/322170/pfx/drive_c/users/steamuser/AppData/Local/GeometryDash/

  2. KDE Plasma theme contains:
       - MS Windows 9x application style
       - Oxygen icons
       - White Sur mouse cursor
       - No splash screen

  3. Panel (size 46) contains:
       - Application launcher
       - Icons-Only Task Manager, normal spacing
       - Always show clipboard, sound, Bluetooth, network
       - 7pts Noto Sans clock, date format "MMM. d, yyyy"

# Generation management

List generations by executing:
  - sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

Delete generations m, n, o & p; m, n, o, p  = generation numbers, by executing:
  - sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations m n o p

Trash old package versions by executing:
  - nix-collect-garbage -d

Rebuild by executing:
  - cd ~/ramonas_config
  - sudo nixos-rebuild switch --flake .#nixos

Update packages by executing:
  - cd ~/ramonas_config
  - sudo nix flake update
  - sudo nixos-rebuild switch --flake .#nixos
