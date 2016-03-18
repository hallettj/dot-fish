function fish_mode_prompt
  switch $fish_bind_mode
    case default
      # set_color --background $solarized_yellow $solarized_base03
      set_color --bold --background yellow black
      echo -n " N "
    case insert
      set_color --bold green
      echo -n "---"
    case visual
      set_color --bold --background magenta black
      echo -n " V "
    end
    set_color normal
  echo -n " "
end
