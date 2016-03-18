# name: Classic + Git
# author: Kevin Ballard
# adapted by: Jesse Hallett
# vim: set sw=2 et:

function fish_prompt --description 'Write out the prompt'
  set -l last_status $status
  set -l normal (set_color normal)

  set -l suffix
  switch $USER
  case root toor
    set suffix (set_color $solarized_base1) '#'
  case '*'
    set suffix (set_color $solarized_base01) '>' $normal
  end

  set -l prompt_status
  if test $last_status -ne 0
    set prompt_status ' ' (set_color --bold cyan) "[$last_status]" "$normal"
  end

  set -l prompt_git (__fish_git_prompt)

  echo -n -s (prompt_pwd_two_components) $prompt_git $prompt_status ' ' $suffix ' '
end
