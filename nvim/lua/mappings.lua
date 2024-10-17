require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-n>", ":Neotree toggle float<CR>")
map("n", "<leader>fl", "<cmd>CellularAutomaton make_it_rain<CR>")
map("n", "<leader>aa", "<cmd>ArduinoAttach<CR>")
map("n", "<leader>av", "<cmd>ArduinoVerify<CR>")
map("n", "<leader>au", "<cmd>ArduinoUpload<CR>")
map("n", "<leader>aus", "<cmd>ArduinoUploadAndSerial<CR>")
map("n", "<leader>as", "<cmd>ArduinoSerial<CR>")
map("n", "<leader>ab", "<cmd>ArduinoChooseBoard<CR>")
map("n", "<leader>ap", "<cmd>ArduinoChooseProgrammer<CR>")
