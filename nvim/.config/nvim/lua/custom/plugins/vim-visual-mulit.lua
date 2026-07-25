return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    -- Optional: Prevents conflict if you use default Neovim mouse behaviors
    vim.g.VM_maps = {
      ['Find Under'] = '<C-n>',
      ['Find Subword Under'] = '<C-n>',
    }
  end,
}
