# nvim-folding

A simple Neovim plugin to choose between different folding methods.

## Installation

You can install the plugin using your preferred plugin manager. Here's how to do it with `LazyVim`:

```lua
{
    "kevinliao852/nvim-folding-plugin",
    config = function()
        require("plugins.nvim-folding").setup()
    end,

}

```

## Usage

Add key map

```lua
vim.api.nvim_set_keymap("n", "<leader>zf", ":lua require('nvim-folding').choose_folding_method()<CR>", { noremap = true, silent = true })
```
