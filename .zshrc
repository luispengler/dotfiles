# Path to your oh-my-zsh installation.
export ZSH="/home/luispengler/.oh-my-zsh"
ZSH_THEME="half-life"

# History configuration
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias h="history | cut -c 8- | sort | uniq | fzf | tr -d '\n' | xclip -selection c"
alias pac="sudo pacman"
alias s="speedtest"
alias ..="cd .."
alias mv="mv -i"
alias rm="rm -i"
alias px="pdflatex"
alias bx="vim ~/drive/Research/bib.bib"
alias cam="mpv /dev/video0 --profile=low-latency --untimed --framedrop=no --opengl-glfinish=yes"
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias hd="sudo mount /dev/sda1 /home/luispengler/drive/HDD"
alias uhd="sudo umount /home/luispengler/drive/HDD"
alias a="afetch"
alias emacx="/usr/bin/emacs --daemon &"
alias config="/usr/bin/git --git-dir=$HOME/lg/gitclones/dotfiles/ --work-tree=$HOME"
