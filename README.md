# 🧰 **Vim**

## 📦 기본 패키지 & Vim 설치

```bash
sudo apt update
sudo apt install vim-gtk3 -y
```
---

## 🎨 Nerd Font(D2Coding) 설치

```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/D2Coding.tar.xz
tar -xf D2Coding.tar.xz
fc-cache -fv
```

---

## 🔧 Vim 플러그인 매니저(Vundle) 설치

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Vim 설정 파일 편집:

```bash
vim ~/.vimrc
```

Vundle 플러그인 설치:

```vim
:PluginInstall
```

---

## 🧱 YouCompleteMe 빌드 준비 패키지 설치

```bash
sudo apt install build-essential cmake vim-nox python3-dev -y
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm -y
```

---

### 🔨 YouCompleteMe 설치

```bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

---

## 🟩 Node.js 최신 LTS 업데이트 (Vim 플러그인 및 Copilot용)

```bash
sudo apt update
sudo apt-get upgrade
npm cache clean -f
sudo npm install -g n
sudo n lts
node -v
```

---

## 🤖 GitHub Copilot Vim 플러그인 설치

```bash
git clone --depth=1 https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim
```
