return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "roobert/tailwindcss-colorizer-cmp.nvim",
      config = true,
    },
  },
  opts = function(_, opts)
    local format_kinds = opts.formatting.format or function(entry, vim_item)
      return vim_item
    end

    opts.formatting.format = function(entry, vim_item)
      vim_item = format_kinds(entry, vim_item)
      vim_item = require("tailwindcss-colorizer-cmp").formatter(entry, vim_item)
      return vim_item
    end
  end,
}
