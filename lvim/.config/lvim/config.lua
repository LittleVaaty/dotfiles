-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.format_on_save = true

lvim.plugins = {
  { "ellisonleao/gruvbox.nvim",       priority = 1000, config = true },
  { "christoomey/vim-tmux-navigator", lazy = false }
}

lvim.colorscheme = "gruvbox"

lvim.keys.normal_mode["<C-h>"] = "<cmd> TmuxNavigateLeft<CR>"
lvim.keys.normal_mode["<C-j>"] = "<cmd> TmuxNavigateDown<CR>"
lvim.keys.normal_mode["<C-k>"] = "<cmd> TmuxNavigateUp<CR>"
lvim.keys.normal_mode["<C-l>"] = "<cmd> TmuxNavigateRight<CR>"
