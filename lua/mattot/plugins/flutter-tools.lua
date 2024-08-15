return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = true,
  opts = {
    vim.keymap.set('n', '<leader>FR', '<cmd>FlutterRun<cr>', { desc = '[F]lutter [R]un' }),
    vim.keymap.set('n', '<leader>Frl', '<cmd>FlutterReload<cr>', { desc = '[F]lutter [R]e[L]oad' }),
    vim.keymap.set('n', '<leader>Frs', '<cmd>FlutterRestart<cr>', { desc = '[F]lutter [R]e[S]tart' }),
    vim.keymap.set('n', '<leader>Fo', '<cmd>FlutterOutlineToggle<cr>', { desc = '[F]lutter [O]utline toggle' }),
    vim.keymap.set('n', '<leader>Fq', '<cmd>FlutterQuit<cr>', { desc = '[F]lutter [Q]uit' }),
  },
}
