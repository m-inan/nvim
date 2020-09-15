## Vim Configration
### MacOs Installation Guide
#### Config files
```console
# If not exist .config folder
cd ~ && mkdir .config && cd .config

# Clone nvim folder in ~/.config
git clone https://github.com/m-inan/nvim.git
```
#### Neovim
```console
brew install neovim
```
#### Alias Nvim
```sh
# .bash_profile
alias vim=nvim
```
#### Vim-Plug
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
```
:PlugInstall
```
### Rip Grep
```
brew install ripgrep
```

### Tmux
```console
brew install tmux
```

```console
# move .tmux.conf home directory
cd ~/.config/nvim/.tmux.conf ~/.tmux.conf
```

