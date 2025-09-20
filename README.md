# dotfiles

These dotfiles are designed to be installed with chezmoi and used with ZSH.

# Things to install

## Zap

```sh
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
```

## Others

```sh
brew install chezmoi
brew install delta
brew install starship
brew install atuin
brew install zoxide
brew install --cask font-hack-nerd-font
brew install --cask ghostty
```

# Install Dotfiles

```sh
chezmoi init https://github.com/capotej/dotfiles.git
```

# Load them ~/.zshrc

```sh
source ~/.zcustom
```

