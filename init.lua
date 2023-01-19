local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

alt_send_esc = false

-- use space as leader
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

local n_mappings = {
    -- move cursor between windows
    ["<M-Up>"] = "<C-W>k",
    ["<M-Down>"] = "<C-W>j",
    ["<M-Left>"] = "<C-W>h",
    ["<M-Right>"] = "<C-W>l",
    -- center cursor after scroll is sweet
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz"
}


local utils = require("trond/utils")
utils.map("n", n_mappings)

require("lazy").setup("trond.plugins", opts)

