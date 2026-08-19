--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- exit insert mode with jk
vim.keymap.set('i', 'jk', '<Esc>', { noremap = false, desc = 'Exit Insert Mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- winow splits
vim.keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split Vertical' })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split Horizontal' })
vim.keymap.set('n', '<leader>sq', '<C-w>q', { desc = 'Close Split' })

-- Move single lines in Normal mode
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })

-- Move single lines in Insert mode
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { silent = true })

-- Move multiple selected lines in Visual mode
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })
