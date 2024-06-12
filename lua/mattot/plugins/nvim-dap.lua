return {
  'mfussenegger/nvim-dap',
  config = function()
    vim.keymap.set('n', '<leader>db', '<cmd> DapToggleBreakpoint<cr>', { desc = '[D]AP [B]reakpoint' })
    vim.keymap.set('n', '<leader>dr', '<cmd> DapContinue<cr>', { desc = '[D]AP [R]un' })

    local dap = require 'dap'

    -- Adapters
    dap.adapters.cpp = {
      type = 'executable',
      command = '/opt/homebrew/opt/llvm/bin/lldb-dap',
      name = 'lldb',
    }

    -- Configurations
    dap.configurations.cpp = {
      {
        name = 'Launch',
        type = 'cpp',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
      },
    }
  end,
}
