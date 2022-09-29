--neovim options file
--you can pull up the options manual using :help options

local options = {
    autoindent = true,			                            -- applies automatic indentation
    backup = false,			                                -- disables creation of a backup file
    writebackup = false,                                    -- if a file is being edited by another program, it is not allowed to be edited
    swapfile = false,                                       -- creates a swapfile
    undofile = true,                                        -- enable persistent undo
    clipboard = "unnamedplus",		                        -- allows neovim to access system clipboard
    completeopt = { "menuone", "noselect" },                -- sets the correct options for autocomplete
    encoding = "utf-8",                                     -- sets encoding that gets displayed to utf-8
    fileencoding = "utf-8",		                            -- sets file encoding to utf-8
    conceallevel = 0,                                       -- allows `` to be visible in markdown files
    hlsearch = false,                                        -- highlight all matches on previous search pattern
    ignorecase = true,                                      -- ignore case in search patterns
    pumheight = 10,                                         -- pop up menu height
    smartcase = true,                                       -- smart case
    smartindent = true,                                     -- make indenting smarter again
    showtabline = 1,                                        -- show tabs if there is more than one tab open
    splitbelow = true,                                      -- force all horizontal splits to go below current window
    splitright = true,                                      -- force all vertical splits to go to the right of current window
    timeoutlen = 500,                                       -- time to wait for a mapped sequence to complete (in milliseconds)
    updatetime = 300,                                       -- faster completion (4000ms default)
    lazyredraw = true,                                      -- disables redraw until actions are complete
    expandtab = true,                                       -- convert tabs to spaces
    shiftwidth = 4,                                         -- the number of spaces inserted for each indentation (4 spaces)
    tabstop = 4,                                            -- insert 4 spaces for a tab
    softtabstop = 4,                                        -- insert 4 spaces for a soft tab
    number = true,                                          -- set numbered lines
    numberwidth = 4,                                        -- sets the width of the number column
    relativenumber = true,                                  -- set relative numbered lines
    signcolumn = "yes",                                     -- enables the sign column
    wrap = false,                                           -- display lines as one long line
    scrolloff = 8,                                          -- sets the number of lines that must visibly be above and below the cursor
    sidescrolloff = 8,			                            -- sets the number of columns that must visibly be left and right of the cursor
    termguicolors = true,
    syntax = "ON",                                          -- enables syntax highlighting based on the file type
    guicursor= "a:block-blinkwait100-blinkon10-blinkoff10", -- sets the cursor to always be a blinking block regardless of mode
    nrformats= "bin,octal,hex,alpha"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
