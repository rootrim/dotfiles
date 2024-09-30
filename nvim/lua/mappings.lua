require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-n>", ":Neotree toggle float<CR>")
map("n", "<leader>fl", "<cmd>CellularAutomaton make_it_rain<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
