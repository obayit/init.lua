require('dap-python').setup('~/.virtualenv/debugpy-38/bin/python')

local dap = require('dap');

vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F10>", dap.step_over)
vim.keymap.set("n", "<F11>", dap.step_into)
vim.keymap.set("n", "<F12>", dap.step_out)
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>B", function()
    dap.set_breakpoint(vim.fn.input('Breakpoint Condition: '))
end)
vim.keymap.set("n", "<leader>dr", dap.repl.open)

