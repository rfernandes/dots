export HISTSIZE=100000
export HISTFILESIZE=1000000
export HISTCONTROL="ignoreboth"
export HISTIGNORE="ls:cd:history"

. /usr/share/git/git-prompt.sh

__prompt(){
  exit_code=$([ $? -ne 0 ] && echo "$tbred" || echo "$tbgre")
  git_branch=$(__git_ps1 "\[$tyel\]%s\[$tres\]├─┤")
  date_format="\D{%H:%M %Y-%m-%d}"

  PS1="╭┤$tpur\u$tres@\[$tgre\]\h\[$tres\]├─┤\[$tbblu\]$date_format\[$tres\]├─┤$git_branch\[$tbgre\]\w\[$tres\]│
╰──\[$exit_code\]╴\[$tres\] "
}

__bar_prompt(){
  exit_code=$([ $? -ne 0 ] && echo "$tbred" || echo "$tbgre")

  git_branch=$(__git_ps1 "\[$byel\]\[$tbla\] %s\[$tyel\]")
  date_format="\D{%H:%M %Y-%m-%d}"

#  PS1="╭┤$tpur\u$tres@\[$tgre\]\h\[$tres\]├─┤\[$tbblu\]$date_format\[$tres\]├─┤$git_branch\[$tbgre\]\w\[$tres\]│
#╰──\[$exit_code\]╴\[$tres\] "

  PS1="\
\[$bblu$tbla\] \u@\h:\w \[$tblu\]\
\[$bwhi\]\[$tbla\] $date_format \[$twhi\]\
$git_branch\
\[$bbla\]\[$tres\]
\[$tbla$bblu\] \[$bbla$tblu\]\[$exit_code\]\[$tres\] "
}

__true_color_prompt(){
  exit_code=$([ $? -ne 0 ] && echo "$tbred" || echo "$tbgre")

  git_branch=$(__git_ps1 "\[$byel\]\[$tbla\] %s\[$tyel\]")
  date_format="\D{%H:%M %Y-%m-%d}"

#  PS1="╭┤$tpur\u$tres@\[$tgre\]\h\[$tres\]├─┤\[$tbblu\]$date_format\[$tres\]├─┤$git_branch\[$tbgre\]\w\[$tres\]│
#╰──\[$exit_code\]╴\[$tres\] "

local color1=""

  PS1="\
\[$bblu$tbla\] \u@\h:\w \[\e[38;2;48;100;10m\]\
\[$bwhi\]\[$tbla\] $date_format \[$twhi\]\
$git_branch\
\[$bbla\]\[$tres\]
\[$tbla$bblu\] \[$bbla$tblu\]\[$exit_code\]\[$tres\] "
}

PROMPT_COMMAND=__prompt

# Colorized man output
man() {
  env LESS_TERMCAP_mb=$trev$tred \
  LESS_TERMCAP_md=$tblu \
  LESS_TERMCAP_me=$tres \
  LESS_TERMCAP_se=$tres \
  LESS_TERMCAP_so=$twhi$bred \
  LESS_TERMCAP_ue=$tres \
  LESS_TERMCAP_us=$tpur \
  man "$@"
}


export EDITOR=vim




