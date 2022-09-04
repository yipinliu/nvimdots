local ok, saga = pcall(require, "lspsaga")
if not ok then
    return
end

-- use default config
saga.init_lsp_saga()
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true,noremap = true})
vim.keymap.set("n", "<A-CR>", "<cmd>Lspsaga code_action<CR>", { silent = true,noremap = true })
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", { silent = true,noremap = true })
vim.keymap.set("n", "rn", "<cmd>Lspsaga rename<CR>", { silent = true,noremap = true })
vim.keymap.set("n", "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true,noremap= true })
-- jump diagnostic
vim.keymap.set("n", "[e", require("lspsaga.diagnostic").goto_prev, { silent = true, noremap =true })
vim.keymap.set("n", "]e", require("lspsaga.diagnostic").goto_next, { silent = true, noremap =true })
-- or jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true, noremap = true })



