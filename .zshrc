# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

PATH="$PATH":"$HOME/.local/scripts/"

bindkey -s ^f "tmux-sessionizer\n"

# Clean npm and yarn install
alias flush-npm="rm -rf node_modules && rm package-lock.json && npm i"
alias flush-yarn="rm -rf node_modules && rm yark.lock && yarn install"


alias c="code ."

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


export PATH="$HOME/.tmuxifier/bin:$PATH"

alias air='$(go env GOPATH)/bin/air'
export PATH="/opt/homebrew/opt/bc/bin:$PATH"

# Android stuff
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"

alias zcloc="~/zcloc"
alias createfile="~/createfile"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias workspace="cd ~/workspace"
alias edit="nvim ~/.config/nvim"



# Git aliases
alias gpush='git push origin HEAD'

# pnpm
export PNPM_HOME="/Users/muthukumar/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias open-apk="open ./android/app/build/outputs/apk/release"

install-apk-wifi-fn() {
    if [ -z "$1" ]; then
        echo "Usage: install-apk-wifi <device-ip>"
        return 1
    fi
    adb -s "$1:5555" install ./android/app/build/outputs/apk/release/app-release.apk
}


alias install-apk-wifi="install-apk-wifi-fn $1"
