{pkgs, ...}:

{
  programs.git = {
      enable = true;
      settings.user.name = "Ramona";
      settings.user.email = "ramona@git.com";
  };
}
