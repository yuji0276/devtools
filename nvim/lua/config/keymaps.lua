local map = vim.keymap.set

-- oil.nvim
map("n", "-", "<Cmd>Oil<CR>", { desc = "親ディレクトリを開く" })

-- fzf-lua
map("n", "<leader>f", function()
  require("fzf-lua").files()
end, { desc = "ファイル検索" })
