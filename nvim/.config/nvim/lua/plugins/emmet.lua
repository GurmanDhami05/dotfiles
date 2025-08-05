return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      emmet_ls = {
        filetypes = {
          "html",
          "css",
          "javascript",
          "javascriptreact",
          "typescriptreact", -- for .tsx files
          "vue",
          "svelte",
          "php",
          "xml",
        },
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
              ["jsx.enabled"] = true,
            },
          },
        },
      },
    },
  },
}
