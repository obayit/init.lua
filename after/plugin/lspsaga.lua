local saga = require("lspsaga")

saga.init_lsp_saga({
    symbol_in_winbar = {
        in_custom = false,  -- what does this do?
        enable = true,
        separator = ' ',
        show_file = true,
        -- define how to customize filename, eg: %:., %
        -- if not set, use default value `%:t`
        -- more information see `vim.fn.expand` or `expand`
        -- ## only valid after set `show_file = true`
        file_formatter = "",
        click_support = false,
    },

})
