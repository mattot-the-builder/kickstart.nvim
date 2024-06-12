return {
  'xiyaowong/transparent.nvim',
  config = function()
    vim.keymap.set('n', '<leader>tt', '<cmd> TransparentToggle<cr>', { desc = '[T]oggle [T]ransparent' })
  end,
}
