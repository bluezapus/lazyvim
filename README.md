
# 🌀 My LazyVim Config (Python & Django Setup)

This is my personal LazyVim Neovim configuration, tuned for Python and Django development with debugging, linting, formatting, and more.


## Inspired from

#### Lazyvim

https://www.lazyvim.org/

https://github.com/deaafrizal/lazyvim.git


## 🧰 Features


- 🐍 Python and Django support

- 🔛 Debugging with   [nvim-dap-python]()

- 🧹 Linting and formatting via [conform.nvim]()

- 🗼️ Beautiful UI with [Catppuccin](https://github.com/catppuccin) theme

- ⚡ Fast and lazy-loaded plugins

- 💻 NerdFont and [Kitty](https://sw.kovidgoyal.net/kitty/) terminal ready


## ✨ Quick Setup

#### 🍎 Installation for MacOs
#### 🟠 Installation for Ubuntu
#### 🐧 Installation for Arch

```bash
  python --version
```
```bash
  sudo pacman -S kitty neovim python-pip nodejs npm git curl ripgrep fd fzf
```
```bash
  yay -S ttf-teracode-nerd
```

### Installation Dependencies
```bash
  npm install -g pyright prettier
```
```bash
  mkdir -p ~/.virtualenvs
```
```bash
  python -m venv ~/.virtualenvs/debugpy
```
```bash
  source ~/.virtualenvs/debugpy/bin/activate
```
```bash
  pip install debugpy setuptools
```
#### If you're using [.virtualenvs]() in project folders, [nvim-dap-python]() will auto-detect it.
### for django framework

```bash
  pip install pynvim flake8 django djangorestframework black isort ruff djlint
```
```bash
  pip install --upgrade pip
```
```bash
  git clone ~/.config/nvim/ 
```
```bash
  cd ~/.config/nvim/ 
```
```bash
  nvim
```
```bash
  : Lazy sync
```

### 📦 Neovim Tools via Mason
Open nvim and run:
```bash
  : Mason
```
#### install the following:
- [pyright]() (Python LSP)
- [ruff-lsp]() (optional for linting)
- [djlint]() {for Django templates, via pip}

Use [:ConformInfo]() or [:LspInfo]() to see formatters and LSPs working.


