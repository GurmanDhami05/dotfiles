return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        width = 30,
        mappings = {
          ['q'] = 'close_window', -- q to close from inside neotree
          ['a'] = 'add',
          ['d'] = 'delete',
          ['r'] = 'rename',
          ['c'] = 'copy',
          ['m'] = 'move',
          ['y'] = 'copy_to_clipboard',
          ['p'] = 'paste_from_clipboard',
          ['h'] = 'close_node',
          ['l'] = 'open',
        },
      },
    },
  },
}
