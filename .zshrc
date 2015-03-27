# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler rails nyan ubuntu)

source $ZSH/oh-my-zsh.sh

# Allow Ctrl-S for save in VIM
vim() STTY=-ixon command vim "$@"
# Preferred editor for local and remote sessions
export EDITOR='vim'

# Paths
export PATH="$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Fast commands
alias v=vim
alias gh=vcsh
alias gaa="git add --all"
alias ghi="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gtype="git cat-file -t"
alias gdump="git cat-file -p"
alias gst="git status -s"

# Theme based on alnpeabody
local user='%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local pwd='%{$fg[blue]%}%~%{$reset_color%}'
local return_code='%(?..%{$fg[red]%}%?%{$reset_color%}
)'
local git_branch='%{$fg[red]%}$(work_in_progress)%{$reset_color%}$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} *"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} x"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ->"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} U"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ?"

PROMPT="${return_code}${user}${pwd}$ "
RPROMPT=" ${git_branch}"
