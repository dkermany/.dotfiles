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
run
```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
and then reboot

## To install Kitty
run
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

Then input `Ctrl+Shift+F2` to open config manager. Inside config manager, use the vim commands fo to unfold each block.
Using the reference at `https://sw.kovidgoyal.net/kitty/conf/#opt-kitty.background_image` adjust `background_image`, `background_image_layout`, and `background_tint` to your specifications. Using `Ctrl+Shift+F5` reloads the configuration

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

## Install NeoVIM
```
sudo apt install neovim
```
Then inside nvim, run :PackerSync, then :so 

