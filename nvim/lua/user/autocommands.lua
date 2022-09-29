--neovim autocommands file
--put any autocommands in this file

vim.api.nvim_create_augroup('bufcheck', {clear = true})

    -- remove trailing whitespace when writing to a buffer
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
        pattern = { "*" },
        command = [[%s/\s\+$//e]],
    })

    -- highlight yanks
    vim.api.nvim_create_autocmd('TextYankPost', {
        group    = 'bufcheck',
        pattern  = '*',
        callback = function() vim.highlight.on_yank{timeout=500} end
    })

