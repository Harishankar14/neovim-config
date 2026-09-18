# My Custom Neovim Configuration

A beginner-friendly, customized Neovim configuration built from scratch using `lazy.nvim` as the plugin manager.

## Prerequisites
* **Neovim** (v0.9.0 or higher recommended).
* **Git** (required for the plugin manager to download packages).
* A **Nerd Font** (e.g., JetBrainsMono Nerd Font) installed and set as your terminal font to display file icons correctly.
.

## Keybindings & Usage

### General Shortcuts
| Keybinding | Action |
| :--- | :--- |
| `Space` | Leader Key |
| `:w` | Save file |
| `:wq` | Save and quit |
| `:q` | Quit |

### File Explorer (nvim-tree)
The file explorer opens automatically when you start Neovim. Mouse clicks and resizing are fully supported.
| Keybinding | Action |
| :--- | :--- |
| `Space + e` | Toggle the file explorer open/closed from anywhere |
| `q` | Close the explorer (must click inside it first) |
| `Enter` | Open a file or expand a directory |
| `a` | Add a new file (add `/` at the end to make a directory) |
| `d` | Delete a file or folder |
| `r` | Rename a file |

### Search (Telescope)
| Keybinding | Action |
| :--- | :--- |
| `Space + f + f` | Find files in the current directory |
| `Space + f + r` | Find recently opened files |
| `Escape` (twice) | Close the Telescope search window |

### Plugin Management (lazy.nvim)
Type `:Lazy` inside Neovim to open the plugin manager UI.
| Keybinding | Action |
| :--- | :--- |
| `U` | Update all plugins |
| `X` | Clean up removed plugins |
| `q` | Close the Lazy window |
