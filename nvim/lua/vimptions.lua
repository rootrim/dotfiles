vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.g.mapleader = " "
vim.opt.number = true
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", {})
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", {})
vim.keymap.set("n", "<leader>tp", ":tabprev<CR>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", {})
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", {})
