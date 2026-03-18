return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gs = require 'gitsigns'

      local function map(mode, keys, func, desc) vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = 'Git: ' .. desc }) end

      -- Navigation (updated to new API)
      map('n', ']h', function() gs.nav_hunk 'next' end, 'Next Hunk')
      map('n', '[h', function() gs.nav_hunk 'prev' end, 'Prev Hunk')

      -- Actions
      map('n', '<leader>hs', gs.stage_hunk, 'Stage Hunk')
      map('n', '<leader>hr', gs.reset_hunk, 'Reset Hunk')
      map('n', '<leader>hS', gs.stage_buffer, 'Stage Buffer')
      map('n', '<leader>hp', gs.preview_hunk, 'Preview Hunk')
      map('n', '<leader>hb', gs.blame_line, 'Blame Line')
      map('n', '<leader>hd', gs.diffthis, 'Diff This')
    end,
  },
}
