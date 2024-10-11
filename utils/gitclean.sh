# Clean up merged git branches
function gitclean {
  if [[ -z "$1" ]]
    then
      echo "Please provide a root branch to use as the reference point for cleaning merged branches"
      return
  fi

  local -r trunk="$1"
  local -r protected_branches="(master$)|(develop$)|(staging$)"
  git checkout $trunk

  printf "\nMerged branches to be deleted:\n"
  git branch --merged | grep -Ev $protected_branches
  printf "\nAre you sure you want to delete these branches? (y/N)\n"
  read answer

  if [[ $answer = "y" ]]
    then
      git branch --merged | grep -Ev $protected_branches | xargs git branch -d
  fi
}