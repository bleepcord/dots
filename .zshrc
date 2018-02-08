# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '/home/nickrot/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=200
setopt appendhistory autocd
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# locale
LANG=en_US.UTF-8; export LANG

# personal
/usr/games/fortune
PROMPT="%0(?..%F{red}FAIL: %?%f)
%F{yellow}[%y]%f %F{magenta}%n%f in %F{blue}%/%f
$ "
RPROMPT="%F{green}[%*]%f"
