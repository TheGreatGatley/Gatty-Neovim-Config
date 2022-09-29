--Neovim highlights file
--Use for all your highlights that you want to change

--Pmenu highlights
vim.api.nvim_command('highlight Pmenu ctermbg=8 guibg=8')

--Sign column highlights
vim.api.nvim_command('highlight SignColumn ctermbg=0 guibg=0')

--Disabling the tilde highlights for unused lines
vim.api.nvim_command('highlight NonText ctermfg=0')

--Changing the appearance of the vertical split
vim.api.nvim_command('highlight VertSplit ctermfg=0 ctermbg=15')

--Enable the onedarkpro colourscheme on startup
vim.api.nvim_command('colorscheme onedarkpro')
