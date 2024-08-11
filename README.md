# dotfiles

## Tools

1. tmux
2. neovim
3. wezterm
4. lazygit
5. brew
6. ohmyzsh

## Others

[Fonts](https://github.com/muthhukumar/fonts)

## Setup  powerlevel10k plugin

```jsx
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
source ~/.zshrc
nvim ~/.p10k.zsh - to edit the file
```

## Setup zsh-autosuggestions plugin

This plugin provides some really nice auto completion functionality as you type out commands.

 Install it like so:

```bash
brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
source ~/.zshrc
```
