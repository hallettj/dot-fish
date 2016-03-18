function homeshick --description "You can type `homeshick cd CASTLE` to enter a castle"
  if [ "$argv[1]" = "cd" ]; and [ -n "$argv[2]" ]
    cd "$HOME/.homesick/repos/$argv[2]"
  else
    eval $HOME/.homesick/repos/homeshick/bin/homeshick $argv
  end
end
