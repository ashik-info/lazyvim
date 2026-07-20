-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set

keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })

keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })

keymap("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
keymap("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })

keymap("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

keymap("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

keymap("n", "<leader>db", "<cmd>DBUIToggle<cr>", { desc = "Database UI" })
