return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- delve は Mason でインストールする (:MasonInstall delve)
      dap.adapters.go = {
        type = "server",
        port = "${port}",
        executable = {
          command = "dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }

      dap.configurations.go = {
        {
          type = "go",
          name = "現在のファイルをデバッグ",
          request = "launch",
          program = "${file}",
        },
        {
          type = "go",
          name = "現在のパッケージをデバッグ",
          request = "launch",
          program = "${fileDirname}",
        },
        {
          type = "go",
          name = "現在のパッケージのテストをデバッグ",
          request = "launch",
          mode = "test",
          program = "${fileDirname}",
        },
      }
    end,
  },
}
