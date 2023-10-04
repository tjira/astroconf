return {
    colorscheme = "tokyonight",

    lsp = {
        config = {
          clangd = {
            capabilities = {
              offsetEncoding = "utf-8"
            }
          }
        },
        formatting = {
            format_on_save = {
                enabled = false
            }
        }
    },

    options = {
        opt = {
            shiftwidth = 4,
            tabstop = 4
        }
    }
}
