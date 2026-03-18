return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    {
      'rcarriga/nvim-notify',
      opts = {
        background_colour = '#000000',
        render = 'wrapped-compact',
        timeout = 3000,
        max_width = 60,
      },
    },
  },
  opts = {
    lsp = {
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = true,
    },
    notify = {
      enabled = true,
    },
  },
  keys = {
    { '<leader>tn', '<cmd>NoiceToggle<cr>', desc = '[T]oggle [N]oice' },
    { '<leader>nd', '<cmd>NoiceDismiss<cr>', desc = '[N]oice [D]ismiss' },
  },
}
