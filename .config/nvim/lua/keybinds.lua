
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap( "n", "<C-P>", ":bprev<CR>", {noremap = true})

vim.api.nvim_set_keymap( "n", "<C-h>", "<C-w>h", {noremap = true})
vim.api.nvim_set_keymap( "n", "<C-j>", "<C-w>j", {noremap = true})
vim.api.nvim_set_keymap( "n", "<C-k>", "<C-w>k", {noremap = true})
vim.api.nvim_set_keymap( "n", "<C-l>", "<C-w>l", {noremap = true})

-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.api.nvim_set_keymap("x", "ga" ,"<Plug>(EasyAlign)", {})

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
vim.api.nvim_set_keymap("n", "ga" ,"<Plug>(EasyAlign)", {})

vim.api.nvim_set_keymap("x", "<Leader>c", '"cc<C-R>=<C-R>c<CR><ESC>', {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>c", '"cc<C-R>=<C-R>c<CR><ESC>', {noremap = true})


vim.api.nvim_set_keymap("x", "<F6>", "<esc>:'<,'>! pandoc -t latex | sed -e '/\\tightlist/d'<CR>", {noremap = true})
