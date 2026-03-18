local function set_transparent()
  vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight NormalFloat guibg=NONE ctermbg=NONE
    highlight FloatBorder guibg=NONE ctermbg=NONE
    highlight VertSplit guibg=NONE ctermbg=NONE
    highlight StatusLine guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    highlight NvimTreeNormal guibg=NONE ctermbg=NONE
    highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
    highlight TelescopeNormal guibg=NONE ctermbg=NONE
    highlight TelescopeBorder guibg=NONE ctermbg=NONE
    highlight FidgetTask guibg=NONE ctermbg=NONE
    highlight FidgetTitle guibg=NONE ctermbg=NONE
    highlight FidgetNormal guibg=NONE ctermbg=NONE
    highlight MiniNotifyBorder guibg=NONE ctermbg=NONE
    highlight MiniNotifyNormal guibg=NONE ctermbg=NONE
    highlight MiniNotifyTitle guibg=NONE ctermbg=NONE
    highlight NotifyBackground guibg=NONE ctermbg=NONE
  ]]
end

-- Run on startup
vim.api.nvim_create_autocmd('UIEnter', {
  once = true,
  callback = set_transparent,
})

-- Re-run whenever colorscheme changes
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = set_transparent,
})
