## i3wm-config
Install i3 window manager
```
sudo apt install i3
```

In order to enable i3, you need to log out and switch window manager in the login page from Ubuntu to i3

Copy the config file to .config/i3/config

To enable the layout_manager, first install the dependencies:
```
sudo apt install jq vim rofi xdotool x11-xserver-utils indent libanyevent-i3-perl
```

Then clone the repository:
```
git clone https://github.com/klaxalk/i3-layout-manager.git
```

and then create a symlink to the layout_manager.sh script
```
ln -s /absolute/pathof/layout_manager.sh /usr/bin/layout_manager
```

Keyboard shortcuts:\
`Alt+Shift+l` -> open layout_manager\
`Alt+d` -> open rofi application search\
`Alt+Shift+<` move window left\
`Alt+Shift+>` move window right\
`Alt+[number]` switch to numbered window\

## To install ZSH and Oh-My-ZSH

Run:

```bash
sudo apt install zsh

# Set ZSH as the default shell
chsh -s $(which zsh)

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Log out and log back in (or reboot).

Verify that ZSH is your default shell:

```bash
echo $SHELL
```

Expected output:

```text
/usr/bin/zsh
```


## To install Kitty
run
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

Then input `Ctrl+Shift+F2` to open config manager. Inside config manager, use the vim commands fo to unfold each block.
Using the reference at `https://sw.kovidgoyal.net/kitty/conf/#opt-kitty.background_image` adjust `background_image`, `background_image_layout`, and `background_tint` to your specifications. Using `Ctrl+Shift+F5` reloads the configuration

## Install NeoVIM

### Install Dependencies

```bash
sudo apt update

sudo apt install \
    git \
    curl \
    unzip \
    ripgrep \
    fd-find \
    build-essential
```

Create an `fd` symlink for Telescope:

```bash
sudo ln -sf $(which fdfind) /usr/local/bin/fd
```

### Download and Extract

```bash
cd /tmp

wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

tar xzf nvim-linux-x86_64.tar.gz
```

### Remove Existing Installation (Optional)

```bash
sudo rm -rf /opt/nvim
```

### Install Neovim

```bash
sudo mv nvim-linux-x86_64 /opt/nvim
```

### Create a System-Wide Symlink

```bash
sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
```

### Verify Installation

```bash
which nvim
nvim --version
```

Expected output:

```text
/usr/local/bin/nvim
NVIM v0.11.x
```

### Install Packer

```bash
git clone --depth 1 \
  https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Install Configuration

Copy the Neovim configuration directory:

```bash
cp -r nvim ~/.config/
```

### Important Configuration Changes

`init.lua` should only contain:

```lua
require("dkermany")
```

Do not configure LSPs directly inside `init.lua`.

Lua language server configuration should be handled by Mason and the LSP configuration files.

Avoid hardcoded paths such as:

```lua
"/home/mstudxk5/.local/share/nvim/mason/bin/lua-language-server"
```

Use:

```lua
vim.fn.stdpath("data") .. "/mason/bin/lua-language-server"
```

or allow Mason to manage the executable automatically.

### Install Plugins

Launch Neovim:

```bash
nvim
```

Run:

```vim
:PackerSync
:PackerCompile
```

Restart Neovim.

### Install LSP Servers

Inside Neovim:

```vim
:MasonInstall lua-language-server
:MasonInstall pyright
:MasonInstall clangd
:MasonInstall eslint-lsp
```

### Verify Telescope Requirements

```bash
rg --version
fd --version
```

### Health Checks

Inside Neovim:

```vim
:checkhealth
:checkhealth mason
:checkhealth telescope
```


## Install Tmux

Download .tar.gz file for latest [tmux release](https://github.com/tmux/tmux/releases)
```
sudo apt install libncurses-dev bison libevent-dev
tar -xvzf [tmux_name].tar.gz
cd [tmux_name]
./configure
make && sudo make install
```

then copy .tmux.conf to ~/
Install [TPM](https://github.com/tmux-plugins/tpm)

Then inside a tmux window, open ~/.tmux.conf with vim and run the command `prefix + I` (capital i) followed by `prefix + r` to install via TPM and reload



