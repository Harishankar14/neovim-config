-- Enable line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure tabs and indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Ensure you always see the sign column
vim.opt.signcolumn = "yes"

-- Set the system clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable mouse support for clicking and resizing
vim.opt.mouse = "a"

-- Define Space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require("lazy").setup({
  -- Install catppuccin, pinned to v1.6.0 for compatibility
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, version = "v1.6.0" },
  
  -- Telescope: A fuzzy file finder
  {
    "nvim-telescope/telescope.nvim", 
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- File tree explorer (Pinned to Neovim 0.9 compatibility)
  {
    "nvim-tree/nvim-tree.lua",
    tag = "compat-nvim-0.9", -- Change to "compat-nvim-0.8" if on Neovim 0.8
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  --adding git tracker icon
  {
    "lewis6991/gitsigns.nvim",
    tag = "v0.9.0",
    config = function()
      require("gitsigns").setup()
    end
  },
})

-- Enable the color scheme
vim.cmd.colorscheme("catppuccin")

-- Telescope keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Find recent files' })

-- File tree keybinding
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file tree', silent = true })

-- Open nvim-tree automatically when Neovim starts
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("nvim-tree.api").tree.open()
  end
})
