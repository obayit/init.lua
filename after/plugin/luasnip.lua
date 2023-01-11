local ls = require "luasnip"

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if ls.jumpable(1) then
    ls.jump(1)
  end
end, { silent = true })
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").load({ paths = { "~/.config/nvim/snippets" } })
-- require("luasnip.loaders.from_snipmate").load({ paths = { "~/.config/nvim/snippets" } })
--
-- " For changing choices in choiceNodes (not strictly necessary for a basic setup).
-- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
--
vim.keymap.set("n", "<leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

