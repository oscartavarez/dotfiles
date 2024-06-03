-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- Buffer movement
map("n", "<C-l>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<C-h>", ":bprevious<CR>", { desc = "Prev buffer" })
map("n", "<C-d>", ":bdelete<CR>", { desc = "Delete buffer" })

-- Git movement
map("n", ",b", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame command" })

-- Telescope mappings
map({ "n" }, "<C-F>", ":Telescope find_files<cr>", { desc = "Open Files" })
map({ "n" }, "<C-B>", ":Telescope buffers<cr>", { desc = "Open buffers" })
map({ "n" }, "<C-T>", ":Telescope grep_string <cr>", { desc = "Search <CWORD>" })
map({ "n" }, "<C-A>", ":Telescope live_grep <cr>", { desc = "Grep search" })
map({ "n" }, "<C-P>", ":Telescope oldfiles <cr>", { desc = "Grep search" })

-- Others
map({ "i" }, "//", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
map({ "n" }, ",t", "<cmd>Neotree reveal_force_cwd toggle float<cr>", { desc = "Open Files" })
map({ "n" }, ",v", ":e ~/.config/nvim/lua/config/keymaps.lua<cr>", { desc = "Open Files" })

map({ "n" }, ",c", function()
  return MiniComment.operator() .. "_"
end, { expr = true, desc = "Comment line" })

map({ "v" }, ",c", [[:<c-u>lua MiniComment.operator('visual')<cr>]], { desc = "Comment line" })
