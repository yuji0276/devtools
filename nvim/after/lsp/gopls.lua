---@type vim.lsp.Config
return {
  settings = {
    gopls = {
      staticcheck = true,
      analyses = {
        unusedparams = true,
        unusedwrite = true,
      },
    },
  },
  on_attach = function(_, bufnr)
    -- 保存前に gofmt 相当のフォーマットを実行
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, async = false })
      end,
    })
  end,
}
