
set -gx NIX_LINK ""

if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]
  bass source "$HOME/.nix-profile/etc/profile.d/nix.sh" --no-use
end

if [ -n "$NIX_LINK" ]
  set -gx CMAKE_PREFIX_PATH "$NIX_LINK"
end
