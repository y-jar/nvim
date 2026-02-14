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

### The Requirements/Dependencies
> **Depandencies**
> 1. Neovim >= 0.10.0
> 2. git
> 3. Node.js + npm
> 4. Python 3 + pip
> 5. C compiler (gcc/clang/MSVC)
> 6. ripgrep + fd (for Telescope)
> 7. curl + tar (for Treesitter)

####Basic Install for these
*(If you need them that is)*
* Fedora, CentOS, Red Hat:
```bash
sudo dnf install git git-cli nodejs npm python3 python3-pip gcc clang
```

* Ubuntu and Debian:
```bash
sudo apt-get update && sudo apt-get install -y git nodejs npm python3 python3-pip clang g++
```

* Arch Linux:
```bash
sudo pacman -S git nodejs npm python python-pip base-devel ripgrep fd curl tar
```

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
 - telascope (Searching)
 - nvim-tree (directories manager)
 - IDE (things for some of the languages i use)
 - markdown rendering
 - theme manager
 - twilight
 - FTerm (build in terminal)
 - relative numbers when in normal mode
 - icon picker 
 
### Keybindings
Notable Keybindings
 - space s (opens the search menu for everything)
 - space v (opens the visuals menu if you want to edit some visuals)
 - space rc (reloads the nvim config)
 - space e (toggles the file explorer on the left)
 - alt t (opens the terminal)

### Plugins
Here is the full list of all plugins:

#### UI/Theme
- dashboard-nvim.lua
- theme-hub.lua
- lualine.lua
- twilight.lua
- which-key.lua
- icon-picker.lua

#### File Management
- nvim-tree.lua
- oil.lua
- telescope.lua

#### LSP/Completion
- lspconfig.lua
- mason.lua
- nvim-cmp.lua
- conform.lua

#### Language Support
- treesitter.lua
- nvim-java.lua
- render-markdown.lua

#### Editing
- nvim-autopairs.lua
- comment.lua
- nvim-mini.lua

#### Git
- gitsigns.lua

#### Terminal/Tools
- FTerm.lua
- reslive.lua

#### Utilities
- nvim-numbertoggle.lua

### License

It Free...











