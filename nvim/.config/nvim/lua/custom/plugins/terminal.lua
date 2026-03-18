return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = 15,
    open_mapping = [[<C-t>]],
    direction = 'horizontal', -- horizontal, vertical, float, tab
    float_opts = {
      border = 'rounded',
    },
    shade_terminals = false,
  },
  keys = {
    { '<C-t>', '<cmd>ToggleTerm<cr>', desc = 'Toggle Terminal' },
    { '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', desc = '[T]oggle [F]loat Terminal' },
    { '<leader>tv', '<cmd>ToggleTerm direction=vertical size=50<cr>', desc = '[T]oggle [V]ertical Terminal' },
  },
}
