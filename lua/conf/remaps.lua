vim.keymap.set("n", "<leader>x", vim.cmd.Ex)
vim.keymap.set("n", "<C-T>", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>git", vim.cmd.Git)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])



vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)



lspOnAttach = function(client, bufnr)
	local opts = {buffer = bufnr, noremap = true}

	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<C-d>", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "<", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", ">", vim.diagnostic.goto_prev, opts)
end




vim.keymap.set('n', '<C-f>', telescopeBuiltin.find_files, {})
vim.keymap.set('n', '<C-g>', telescopeBuiltin.git_files, {})
vim.keymap.set('n', '<leader>gr', function()
	builtin.grep_string({serach = vim.fn.input("Grep > ")})
end)
