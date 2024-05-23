-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    if vim.bo.ft == "python" then
      vim.lsp.buf.code_action({
        context = { only = { "source.fixAll.ruff" } },
        apply = true,
      })
    end
  end,
})
