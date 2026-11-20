# my_nix_dots

These are the files associated with my NixOS configurations.

# General info (for myself)

  1. GD Newgrounds songs are held in directory: ~/.local/share/Steam/steamapps/compatdata/322170/pfx/drive_c/users/steamuser/AppData/Local/GeometryDash/

  2. Panel (size 46) contains:
       - Application menu
       - Icons-Only Task Manager, normal spacing
       - Always show clipboard, sound, Bluetooth, network
       - 7pts Unifont GNU clock, date format "MMM. d, yyyy"

# Generation management

List generations by executing:
  - sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

Delete generations m, n, o & p; m, n, o, p  = generation numbers, by executing:
  - sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations m n o p

Trash old package versions by executing:
  - nix-collect-garbage -d

Rebuild by executing:
  - cd ~/my_nix_dots
  - ./rebuild.nu

Update packages by executing:
  - cd ~/my_nix_dots
  - sudo nix flake update
  - ./rebuild.nu
