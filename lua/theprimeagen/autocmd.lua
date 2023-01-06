-- autocmd FocusLost * :wa

local autocmd = vim.api.nvim_create_autocmd
autocmd("FocusLost", {
    pattern = "*",
    command = "wa"
})
