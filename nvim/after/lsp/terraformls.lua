---@type vim.lsp.Config
return {
  init_options = {
    experimentalFeatures = {
      -- 必須属性を補完時に自動で埋める
      prefillRequiredFields = true,
      -- 保存時に terraform validate を実行する
      validateOnSave = true,
    },
  },
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, async = false })
      end,
    })
  end,
}
