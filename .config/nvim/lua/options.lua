-- add numbers on the left side
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

-- remove text wrapping
vim.opt.wrap = false

-- replace tabs with 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- set clipboard to os clipboard, schedule for startup time?
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- space between cursor and edge of window
vim.opt.scrolloff = 10

vim.opt.virtualedit = 'block'

vim.opt.inccommand = 'split'

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.termguicolors = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.opt.undofile = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- remove highlight on escape
vim.schedule(function()
  vim.keymap.set('n', '<Esc>', '<cmd>noh<cr>')
end)

-- replace ctrl+w+hjkl with ctrl+hjkl to move windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- executing lua in editor
vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<leader>x', ':.lua<CR>')
vim.keymap.set('v', '<leader>x', ':lua<CR>')

-- quickfix keymaps
vim.keymap.set('n', '<M-j>', '<cmd>cnext<CR>')
vim.keymap.set('n', '<M-k>', '<cmd>cprev<CR>')

-- oil
vim.keymap.set('n', '-', '<cmd>Oil<cr>');
