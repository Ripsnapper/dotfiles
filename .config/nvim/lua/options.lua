vim.g.airline_powerline_fonts = true
vim.g["airline#extensions#tabline#enabled"] = true
vim.opt.guifont = "Hack"
-- vim.opt.t_co = 256
vim.cmd [[colorscheme gruvbox]]
vim.o.background = "dark"

vim.o.number = true

vim.cmd [[set path+=**]]
vim.o.wildmenu = true

vim.cmd [[
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4 noexpandtab
  set smarttab
]]

vim.cmd [[set listchars=tab:▸\ ,eol:¬]]
vim.opt.list = true

vim.o.undofile = true


--- vimtex
vim.g.vimtex_view_method = 'zathura'

