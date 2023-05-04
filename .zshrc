# TODO - add a shortcut to source zshrc file

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