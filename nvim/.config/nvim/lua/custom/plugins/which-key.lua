return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    delay = 200,
    icons = {
      mappings = true,
      keys = {
        Up = '↑ ',
        Down = '↓ ',
        Left = '← ',
        Right = '→ ',
        C = '⌃ ',
        M = '⌥ ',
        S = '⇧ ',
        CR = '↵ ',
        Esc = '⎋ ',
        Tab = '⇥ ',
      },
    },
    win = {
      border = 'rounded',
      padding = { 1, 2 },
    },
    layout = {
      spacing = 3,
    },
    spec = {
      { '<leader>f', group = 'Find', mode = { 'n', 'v' } },
      { '<leader>g', group = 'Git' },
      { '<leader>s', group = 'Split' },
      { '<leader>t', group = 'Toggle' },
      { '<leader>h', group = 'Git Hunks', mode = { 'n', 'v' } },
      { '<leader>c', group = 'Copilot/Code' },
      { '<leader>r', group = 'Rename' },
      { '<leader>n', group = 'Noice' },
      { '<leader>x', group = 'Close Buffer' },
      { '<leader>e', group = 'Explorer' },
      { '<leader>q', group = 'Quickfix' },
      { 'gr', group = 'LSP Actions', mode = { 'n' } },
      { 'z', group = 'Folds' },
    },
  },
}
