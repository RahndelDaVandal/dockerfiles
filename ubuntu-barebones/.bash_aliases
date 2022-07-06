# bash_aliases

# my aliases
alias cat="bat"                       
alias ls="exa -alFmh --group-directories-first"

# zoxide aliases
alias cd='z'
alias zz='z -'

# Python venv alias                                             
venv_alias(){                                       
  if [[ $VIRTUAL_ENV ]]; then
      deactivate                       
    else
    source .venv/bin/activate                           
  fi                                                                
}                                                              
alias venv=venv_alias                                         
