function prompt_pwd_two_components --description "Print the last two components of the current working directory"
  set -l realhome ~
  set -l IFS /
  echo $PWD | sed -e "s|^$realhome|~|" | read -la components
  set -l len (count $components)
  if math "$len>=2" >/dev/null
    echo "$components[-2]/$components[-1]"
  else
    echo $components[-1]
  end
end

