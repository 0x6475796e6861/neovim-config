# Neovim Development Configuration

A minimal, modern Neovim configuration for development work, built with the lazy.nvim plugin manager.

## What is Neovim?

**Neovim** is a modern, extensible text editor that's a fork of the classic Vim editor. It's designed for efficient text editing using keyboard shortcuts and is highly customizable through configuration files and plugins.

## What is This Project?

This is a **Neovim configuration** - a collection of settings, keybindings, and plugins that customize how Neovim looks and behaves. Think of it as your personalized development environment.

## Key Concepts

- **Plugin**: Extensions that add new features to Neovim
- **Plugin Manager**: A tool that installs and manages plugins (this config uses lazy.nvim)
- **Lua**: The programming language used to configure modern Neovim
- **Leader Key**: A special key (Space in this config) that starts custom key combinations
- **Keymap**: Custom keyboard shortcuts for various actions

## Features

### 🎨 Visual Enhancements
- **Nightfox Theme**: Beautiful "carbonfox" colorscheme with transparency and window dimming
- **Web Devicons**: File type icons for better visual file recognition

### 📁 File Management  
- **Oil.nvim**: Modern file explorer that lets you edit directories like text files
  - Press `-` to open the current directory
  - Use `Ctrl+p` for file preview
  - Use `Ctrl+s` for vertical split, `Ctrl+h` for horizontal split

### 🔍 Search & Navigation
- **Telescope**: Powerful fuzzy finder for files, text, and more
  - Searches hidden files by default
  - Preview limit set to 10MB for performance
  - Custom navigation with `Ctrl+j/k`

### ⚙️ Smart Defaults
- **Filetype-specific settings**:
  - JSON files: 2-space indentation
  - Lua files: 2-space indentation with proper expansion
- **Leader keys**: Space as main leader, backslash as local leader

## Project Structure

```
├── init.lua              # Main entry point - loads everything
├── lazy-lock.json        # Plugin version lock file (like package-lock.json)
├── lua/
│   ├── keymaps/
│   │   ├── init.lua      # Global keybindings (sets leader keys)
│   │   └── oil.lua       # File explorer keybindings
│   └── plugins/          # Plugin configurations
│       ├── devicons.lua  # File icons
│       ├── nightfox.lua  # Color theme
│       ├── oil.lua       # File explorer
│       ├── plenary.lua   # Utility library (dependency)
│       └── telescope.lua # Fuzzy finder
└── after/
    └── ftplugin/         # File-type specific settings
        ├── json.lua      # JSON file settings
        └── lua.lua       # Lua file settings
```

## Installation

1. **Backup your existing Neovim config** (if you have one):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this configuration**:
   ```bash
   git clone <repository-url> ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```

4. **Wait for plugins to install** - lazy.nvim will automatically install all plugins on first run.

## Key Bindings

- **Leader Key**: `Space`
- **Local Leader**: `\`
- **Open File Explorer**: `-` (opens parent directory in Oil)
- **File Preview**: `Ctrl+p` (in Oil file explorer)
- **Split Windows**: `Ctrl+s` (vertical), `Ctrl+h` (horizontal) in Oil

## Plugin Management

This configuration uses **lazy.nvim** as the plugin manager, which:
- Automatically installs missing plugins
- Lazy-loads plugins for faster startup
- Checks for updates automatically
- Locks plugin versions for stability (see `lazy-lock.json`)

## Customization

To modify this configuration:
1. Edit files in `lua/plugins/` to change plugin settings
2. Add keybindings in `lua/keymaps/`
3. Adjust filetype settings in `after/ftplugin/`
4. The main `init.lua` rarely needs changes

## Getting Started

After installation, try these commands in Neovim:
- Press `-` to explore files
- Use `:Lazy` to manage plugins
- Use `:help` to access Neovim documentation
- Explore the configuration files to understand how everything works

Happy coding! 🚀