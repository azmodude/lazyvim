return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      automatic_installation = { exclude = { "delve" } },
      handlers = {
        function(config)
          -- all sources with no handler get passed here
          -- Keep original functionality
          require("mason-nvim-dap").default_setup(config)
        end,
        -- golang
        delve = function(config)
          config.configurations = {
            {
              name = "Delve: Debug",
              type = "delve",
              request = "launch",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              name = "Delve: Debug with Arguments",
              type = "delve",
              request = "launch",
              args = function()
                local args_string = vim.fn.input("Input arguments: ")
                return vim.split(args_string, " ")
              end,
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "delve",
              name = "Delve: Debug Package",
              request = "launch",
              program = "${fileDirname}",
            },
            {
              type = "delve",
              name = "Delve: Attach",
              mode = "local",
              request = "attach",
              processId = require("dap.utils").pick_process,
            },
            {
              type = "delve",
              name = "Delve: Debug test",
              request = "launch",
              mode = "test",
              program = "${file}",
            },
            {
              type = "delve",
              name = "Delve: Debug test (go.mod)",
              request = "launch",
              mode = "test",
              program = "./${relativeFileDirname}",
            },
          }
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    },
  },
}
