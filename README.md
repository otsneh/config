# Setup steps

Change default shell to zsh:

```
chsh -s $(which zsh)
```

NOTE: it's important not to use sudo for this, to apply the changes to the current user

Install oh-my-zsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install powerlevel10k for oh-my-zsh:
(taken from https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

If on macos, also install fonts for powerlevel10k from above.

Add autosuggestions and autohighlighting:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

Edit plugins in .zshrc (wiped by powerlevel10k install):
```
plugins=(
    git
    macos
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```

Install Vundle.vim:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Open vim and install vundle plugins:

```
vim .vimrc
:PluginInstall
```