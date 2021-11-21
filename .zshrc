# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#alias ls='ls --color=auto'
alias ls='lsd'
alias ll='lsd -l'
alias lh='lsd -lah'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias cp="cp -i"             # confirm before overwriting something
alias lg='lazygit'
alias code='vscodium'
# Removing unsed packages (orphans)
alias autoremove='sudo pacman -Rns $(pacman -Qtdq)'
# Run vpngate-with-proxy
alias vpngate='/home/sean/Tools/vpngate-with-proxy/run'
# Run ani-cli
alias ani-cli='/home/sean/Tools/ani-cli/ani-cli'
# Run pokemon-colorscripts-git print random pokemon
alias pokemon='pokemon-colorscripts -r'
# Launch Neovim
alias v='nvim'

# Default text editor
EDITOR=/usr/bin/nvim
SUDO_EDITOR=/usr/bin/nvim

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}