-- lua/custom/plugins/copilot.lua
return {
  {
    'github/copilot.vim',
    event = 'InsertEnter',
    config = function()
      vim.g.copilot_no_tab_map = true -- disable tab to avoid conflict with blink.cmp
      vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false,
        desc = 'Accept Copilot Suggestion',
      })
      vim.keymap.set('i', '<C-]>', '<Plug>(copilot-next)', { desc = 'Next Copilot Suggestion' })
      vim.keymap.set('i', '<M-]>', '<Plug>(copilot-prev)', { desc = 'Prev Copilot Suggestion' })
    end,
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      'github/copilot.vim',
      'nvim-lua/plenary.nvim',
    },
    opts = {},
    keys = {
      { '<leader>cc', '<cmd>CopilotChatToggle<cr>', desc = '[C]opilot [C]hat' },
      { '<leader>ce', '<cmd>CopilotChatExplain<cr>', desc = '[C]opilot [E]xplain' },
      { '<leader>cf', '<cmd>CopilotChatFix<cr>', desc = '[C]opilot [F]ix' },
      { '<leader>cr', '<cmd>CopilotChatReview<cr>', desc = '[C]opilot [R]eview' },
    },
  },
}
