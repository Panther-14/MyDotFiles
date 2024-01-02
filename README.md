# MyDotFiles

## Color Palette

|Use           |Color  |
|--------------|-------|
|Pac Man       |#fdff00|
|Ghost Occupied|#8f69c2|
|Ghost Urgent  |#bd0d0d|
|Ghost Empty   |#46bfee|

# Info

```mint
            Setup / Bspwm
 -----------------------------------
 ╭─ Distro               -> Arch
 ├─ Editor               -> VSCode / NeoVim
 ├─ Browser              -> Google Chrome
 ├─ Shell                -> ZSH
 ├─ Shell Theme          -> Oh My ZSH
 ╰─ Resource Monitor     -> Htop

 ╭─ Model                -> HP Pavilion g4 Notebook PC
 ├─ CPU                  -> Intel i3-2310M (4) @ 2.100GHz
 ├─ GPU                  -> Intel 2nd Generation Core Processor Family
 ╰─ Resolution           -> 1366x768

 ╭─ WM                   -> Bspwm
 ├─ Top bar              -> Polybar
 ├─ Terminal             -> Kitty
 ├─ Cursors              -> Simp1e Tokyo Night Storm
 ├─ Theme                -> Tokyonight Storm B
 ├─ Icons                -> Tokyonight Dark
 ├─ Font                 -> Hack Nerd Font
 ├─ Compositor           -> Picom
 ├─ Program Launcher     -> Rofi
 ╰─ Notification Daemon  -> Dunst
 
```

# Features
- **Change themes on the fly**: 
- **Theme Selector**: Alt + Space bar to launch it.
- **Random/Static/Animated wallpaper**:
    - **Random**: Every time you switch between rices or restart bspwm a new wallpaper is set depending on the rice you are on.
    - **Static**: You can chose between diferent wallpapers depending on the rice you are on.
    - **Animated**: Not suported yet.
- **Wallpaper Changer**: Super + q changes bethween different wallpapers in the actual rice or you can chose your favorite.

# Preview
![](./misc/Preview/pre_01.png)

![](./misc/Preview/pre_02.png)

# Setup
## 💾 Installation:
The installer only works for **ARCH** Linux, and based distros.

Open a terminal in HOME

First download the installer
```bash
curl https://raw.githubusercontent.com/Panther-14/MyDotFiles/main/Installer -o $HOME/Installer
```
Now give it execute permissions
```bash
chmod +x Installer
```

- Finally run the installer
```bash
./Installer
```
or
```bash 
./Installer --white
```

- If you want to install with blackarch repos
```bash
./Installer --black
```
*Once you see the oh my zsh prompt enter the **exit** command to continue with the installation*

> [!TIP]
>
> The --white argument does the same thing as no argument.
>

## Inspired by
- [gh0stzk](https://github.com/gh0stzk), [s4vitar](https://github.com/s4vitar), [Syndrizzle](https://github.com/Syndrizzle).
