vim.keymap.set('n', '<leader>e', '<cmd>Telescope file_browser<CR>', {desc='File Explorer'})
vim.keymap.set('n', '<S-Right>', '<cmd>bnext<CR>', {desc='Next File'})
vim.keymap.set('n', '<S-Left>', '<cmd>bprev<CR>', {desc='Previous File'})
vim.keymap.set('n', '<leader>q', '<cmd>bdelete<CR>', {desc='Close File'})
vim.keymap.set('n', '<leader>w', '<cmd>write<CR>', {desc='Save'})
vim.keymap.set('n', '<C-q>', '<cmd>qa<CR>', {desc='Close Editor'})

vim.keymap.set('n', '<leader>a', '<cmd>keepjumps normal! ggVG<CR>', {desc='Select All'})
vim.keymap.set('v', '<S-Up>', ':m \'<-2<CR>gv=gv')
vim.keymap.set('v', '<S-Down>', ':m \'>+1<CR>gv=gv')
vim.keymap.set('n', '<C-d>', '<C-d>zz', {desc='Half Page Down'})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {desc='Half Page Up'})
vim.keymap.set({'n', 'v'}, '<leader>y', [["y]], {desc='Copy to Clipboard'})
vim.keymap.set({'n', 'v'}, 'x', [["_d]], {desc='Delete'})
vim.keymap.set({'n', 'v'}, '<leader>p', [["_dP]], {desc='Paste From Clipboard'})

vim.keymap.set('i', '<kEnd>', '1');
vim.keymap.set('i', '<kDown>', '2');
vim.keymap.set('i', '<kPageDown>', '3');
vim.keymap.set('i', '<kLeft>', '4');
vim.keymap.set('i', '<kOrigin>', '5');
vim.keymap.set('i', '<kRight>', '6');
vim.keymap.set('i', '<kHome>', '7');
vim.keymap.set('i', '<kUp>', '8');
vim.keymap.set('i', '<kPageUp>', '9');
vim.keymap.set('i', '<kInsert>', '0');
vim.keymap.set('i', '<kDel>', '.');
