function gtop --description "Change directory to root of git repository"
  cd (git rev-parse --show-toplevel)
end
