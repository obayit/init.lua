local builtin = require('telescope.builtin')
local telescope = require("telescope")

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

telescope.load_extension("recent_files")
vim.keymap.set("n", "<Leader><Leader>", telescope.extensions.recent_files.pick)


-- require('telescope').setup {
--     file_ignore_patterns = {
--         -- node modules
--         "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*",
--         -- i18n transaltion files
--         "*.po", "*.pot"
--     },
-- }
--
