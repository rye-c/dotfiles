# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Terminal Settings
set -o vi

# Macports
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Alias
alias battery='system_profiler SPPowerDataType | grep -A3 -B7 "Condition"'
#alias nvim='vim'
alias rtv='tuir'
alias gentoo='ssh ryec@192.168.73.5'
alias syncdot="git --git-dir=$DOTFILES_PATH/ --work-tree=$HOME"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Custom Functions
mkcd () {
    mkdir "$1"
    cd "$1"
}

