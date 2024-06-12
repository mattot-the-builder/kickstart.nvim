return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    'mfussenegger/nvim-dap',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    require('dapui').setup()
    vim.keymap.set('n', '<leader>du', require('dapui').toggle, { desc = '[D]AP [U]I' })
    vim.keymap.set('n', '<leader>do', require('dapui').open, { desc = '[D]AP [O]pen' })
    vim.keymap.set('n', '<leader>dc', require('dapui').close, { desc = '[D]AP [C]lose' })
  end,
}
