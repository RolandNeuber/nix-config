{ pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."roland" = {
    isNormalUser = true;
    description = "Roland Neuber";
    extraGroups = [ "networkmanager" "wheel" "dialout" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };
}
