# vimrc

```
sudo apt install vim
```

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

```
vim ~/.vimrc
```

```
:PluginInstall
```

```
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/D2Coding.tar.xz
tar -xf D2Coding.tar.xz
fc-cache -fv
```

```
sudo apt install build-essential cmake vim-nox python3-dev
```

```
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
```

```
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

```
sudo apt update
sudo apt-get upgrade
npm cache clean -f
sudo npm install -g n
sudo n lts
node -v
```

```
git clone --depth=1 https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```
