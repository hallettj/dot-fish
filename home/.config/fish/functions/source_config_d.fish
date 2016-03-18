function source_config_d --description "Sources ~/.config/fish/config.d/*.fish"
  set -l configHome (
    if set -q XDG_CONFIG_HOME
      echo $XDG_CONFIG_HOME
    else
      echo "$HOME/.config"
    end
  )
  for file in $configHome/fish/config.d/*.fish
    source $file
  end
end
