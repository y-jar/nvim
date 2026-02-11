# My Neovim configuration
*Its very epic*
---

## Why this?

This configuration was made for me in particular to act as a 
replacement for some of my workflow for note taking and programing.
this isnt me making the most efficiant thing, but it does the job for me, and maybe you!


<!-- the file directories format -->

### Directories Layout

nvim/
├── init.lua
└── lua/
    ├── core/ (maincomponents like mappings or options)
    └── plugin/ (houses plugins)

---

## Install Guide

> #### The Requirements
> C compiler?
> A [Nerd Font](https://www.nerdfonts.com/) (optional, but recommended)
> All reqs for telascope

### Quick Install

**Bash**
```Bash
git clone https://github.com/y-jar/nvim.git ~/.config/nvim/ 
```

**Zsh**
```Zsh
git clone https://github.com/y-jar/nvim.git ~/.config/nvim/
```

**After Install, Restart Neovim**
```Bash
nvim
```

### Backup Install 
If you want to try this config but keep your existing setup, use this method to back up your current configuration first.

**Bash:**
```bash
# Backup existing config
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup
[ -d ~/.local/share/nvim ] && mv ~/.local/share/nvim ~/.local/share/nvim.backup
[ -d ~/.local/state/nvim ] && mv ~/.local/state/nvim ~/.local/state/nvim.backup
[ -d ~/.cache/nvim ] && mv ~/.cache/nvim ~/.cache/nvim.backup

# Clone this config
git clone https://github.com/y-jar/nvim.git ~/.config/nvim

echo "Backup complete! Your old config is saved with .backup extension"
```

**Zsh:**
```zsh
# Backup existing config
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup
[ -d ~/.local/share/nvim ] && mv ~/.local/share/nvim ~/.local/share/nvim.backup
[ -d ~/.local/state/nvim ] && mv ~/.local/state/nvim ~/.local/state/nvim.backup
[ -d ~/.cache/nvim ] && mv ~/.cache/nvim ~/.cache/nvim.backup

# Clone this config
git clone https://github.com/y-jar/nvim.git ~/.config/nvim

echo "Backup complete! Your old config is saved with .backup extension"
```


### Nuke Install (Clean Slate)
This will completely remove your existing Neovim configuration and data. **Use with caution please!** <3 

**Bash:**
```bash
# Remove all Neovim config and data
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Clone this config
git clone https://github.com/y-jar/nvim.git ~/.config/nvim

echo "Clean install complete!"
```

**Zsh:**
```zsh
# Remove all Neovim config and data
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Clone this config
git clone https://github.com/y-jar/nvim.git ~/.config/nvim

echo "Clean install complete!"
```

### Restore Backup 
If you used the backup install and want to restore your original configuration:

**Bash:**
```bash
# Remove this config
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Restore backups
[ -d ~/.config/nvim.backup ] && mv ~/.config/nvim.backup ~/.config/nvim
[ -d ~/.local/share/nvim.backup ] && mv ~/.local/share/nvim.backup ~/.local/share/nvim
[ -d ~/.local/state/nvim.backup ] && mv ~/.local/state/nvim.backup ~/.local/state/nvim
[ -d ~/.cache/nvim.backup ] && mv ~/.cache/nvim.backup ~/.cache/nvim

echo "Backup restored!"
```

**Zsh:**
```zsh
# Remove this config
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Restore backups
[ -d ~/.config/nvim.backup ] && mv ~/.config/nvim.backup ~/.config/nvim
[ -d ~/.local/share/nvim.backup ] && mv ~/.local/share/nvim.backup ~/.local/share/nvim
[ -d ~/.local/state/nvim.backup ] && mv ~/.local/state/nvim.backup ~/.local/state/nvim
[ -d ~/.cache/nvim.backup ] && mv ~/.cache/nvim.backup ~/.cache/nvim

echo "Backup restored!"
```

## Post-Installation
After installation, open Neovim:
```bash
nvim
```

The plugin manager should automatically install all plugins. 
If not, you may need to run the plugin manager's install command 
(depends on which plugin manager you're using - lazy.nvim, packer, etc.).

### Uninstall
To completely remove this configuration:
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

### Features
Here are all the features I Deem Notable for this configuration.
[MY_EPIC_PLACEHOLDER]

### Keybindings
Notable Keybindings
[MY_EPIC_PLACEHOLDER]

### Plugins
Here is the full list of all plugins:
[MY_EPIC_PLACEHOLDER]

### License

It Free...











