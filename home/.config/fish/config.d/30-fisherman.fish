set -g fisher_home ~/.local/share/fisherman
set -g fisher_config ~/.config/fisherman
if [ -d $fisher_home ]
  source $fisher_home/config.fish
end
