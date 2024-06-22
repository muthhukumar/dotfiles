export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO 
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# npm alias
alias nrd="npm run dev"
alias nrs="npm run start"
alias ni="npm install $*"
alias nrb="npm run build"
alias nrt="npm run test $*"
alias ns="npm start"

# Clean npm and yarn install
alias flush-npm="rm -rf node_modules && rm package-lock.json && npm i"
alias flush-yarn="rm -rf node_modules && rm yark.lock && yarn install"

# TODO
alias workspace="cd $WORKSPACE/"

# TODO - add for zshrc and others
alias edit="vim $HOME/.bash_profile"

alias c="code ."

alias ctii="cargo test -- --include-ignored"
alias exercism-test="cargo watch -x 'test -- --include-ignored'"


################## ZIG #############################
alias zb="zig build"
################## ZIG #############################

export PATH="$HOME/.tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"

export PATH="/usr/local/bin/zig:$PATH"

export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="$ANDROID_HOME/ndk/25.0.8775105"

alias air='$(go env GOPATH)/bin/air'
