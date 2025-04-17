{ user, config, pkgs, ... }:

let
  xdg_configHome = "${config.users.users.${user}.home}/.config";
  xdg_dataHome   = "${config.users.users.${user}.home}/.local/share";
  xdg_stateHome  = "${config.users.users.${user}.home}/.local/state"; in
{

  #   executable = true;
  #   text = ''
  #     #!/bin/zsh
  #     #
  #     # Required parameters:
  #     # @raycast.schemaVersion 1
  #     # @raycast.mode silent
  #     #
  #     # Optional parameters:

  #     if [[ $1 = "-t" ]]; then
  #       # Terminal mode
  #     else
  #       # GUI mode
  #     fi
  #   '';
  # };
}
