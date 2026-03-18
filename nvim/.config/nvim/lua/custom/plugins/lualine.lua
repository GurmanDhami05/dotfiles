return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'catppuccin-mocha',
      globalstatus = true,
      component_separators = { left = '\u{e0b1}', right = '\u{e0b3}' },
      section_separators = { left = '\u{e0b0}', right = '\u{e0b2}' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        { 'branch', icon = '\u{e0a0}' },
        { 'diff', symbols = { added = '\u{f0fe} ', modified = '\u{f459} ', removed = '\u{f0fb} ' } },
        { 'diagnostics', symbols = { error = '\u{f659} ', warn = '\u{f529} ', info = '\u{f129} ', hint = '\u{f835} ' } },
      },
      lualine_c = {
        { 'filename', path = 1, symbols = { modified = '\u{f044}  ', readonly = '\u{f023}  ' } },
      },
      lualine_x = {
        {
          function()
            local ok, copilot = pcall(require, 'copilot.api')
            if not ok then return '' end
            local status = copilot.status.data.status
            local icons = {
              Normal = ' ',
              InProgress = ' ',
              Warning = ' ',
            }
            return icons[status] or ' '
          end,
          color = { fg = '#6CC644' },
        },
        {
          require('lazy.status').updates,
          cond = require('lazy.status').has_updates,
          color = { fg = '#ff9e64' },
        },
        { 'encoding' },
        { 'fileformat' },
        { 'filetype', icon_only = false },
      },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
