# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export HOMEBREW_GITHUB_API_TOKEN="a788254822a72265b8805904ea1b238a6f6ec5a5"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.


export ZSH_THEME="omega-minimal"

export myip=""
# export ZSH_THEME="dpoggi"
# export ZSH_THEME="mh"
# export ZSH_THEME="gianu"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vim taskwarrior osx man httpie brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/jdefr89/.rvm/gems/ruby-1.9.2-p318/bin:/Users/jdefr89/.rvm/gems/ruby-1.9.2-p318@global/bin:/Users/jdefr89/.rvm/rubies/ruby-1.9.2-p318/bin:/Users/jdefr89/.rvm/bin:/sw/bin:/sw/sbin:/opt:/usr/local/bin:/usr/sbin:/usr/bin:/usr/share:/bin:/usr/games:/sbin:/Users/jdefr89/.rvm/bin:/Users/jdefr89/.bin:/usr/X11R6/bin:/Users/jdefr89/.rvm/bin
export PATH=$PATH:/usr/local/sbin:/usr/local/share:/Users/jdefr89/bin/javacc-5.0/bin
# export PATH=/Users/jdefr89:/usr/local/sbin:/usr/local/share:/Users/jdefr89/bin/javacc-5.0/bin


export HISTFILE=~/.zhistory
export GOPATH=$HOME/programming/Go

export CDPATH=.:~:/etc:/var:~/programming

# Django (Python web-framework, needed these set!)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# My Custom Aliases
alias lsusb='system_profiler SPUSBDataType'
alias shuf="gshuf"
alias gdb="sudo gdb"

alias so='source .zshrc && hash -r'
alias zed='vim ~/.zshrc'

# Grab external IP
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Custom exports
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export TERM=xterm-256color

# List available commands on system
function CommandListing
{
    echo -n $PATH | xargs -d : -I {} find {} -maxdepth 1 -executable -type f - printf '%P\n' | sort -u
}

# Mark/Jump Directory support (A few tweaks were made that are Mac/zshell specific)
export MARKPATH=$HOME/.marks

function jump {
    cd -P $MARKPATH/$1 2> /dev/null || echo "No such mark: $1"
}

# Shortcut for jump
function j {
    cd -P $MARKPATH/$1 2> /dev/null || echo "No such mark: $1"
}

function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}

function unmark {
    rm -i $MARKPATH/$1
}

function marks {
    ls -l $MARKPATH | sed -E "s/  / /g" | cut -d' ' -f9- | sed -E "s/\s-/\t-/g" && echo
}
