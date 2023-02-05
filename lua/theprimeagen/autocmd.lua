-- autocmd FocusLost * :wa

local autocmd = vim.api.nvim_create_autocmd
autocmd("FocusLost", {
    pattern = "*",
    command = "wa"
})

autocmd('Filetype', {
  pattern = { 'javascript', 'typescript' },
  command = 'setlocal tabstop=2 shiftwidth=2'
})
