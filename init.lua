return {
    colorscheme = "nightfox",

    lsp = {
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
    },

    polish = function()
        vim.api.nvim_create_autocmd("VimEnter", {
            desc = 'replace alpha footer text',
            callback = function()
                vim.api.nvim_create_autocmd("UIEnter", {
                    callback = function()
                        local dashboard = require("alpha.themes.dashboard")
                        dashboard.section.footer.val = {}
                    end
                })
            end
        })
    end
}
