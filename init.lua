return {
    colorscheme = "catppuccin",

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

        vim.api.nvim_create_autocmd('User', {
            desc = 'hide cursor for alpha',
            pattern = 'AlphaReady',
            callback = function()
                local hl = vim.api.nvim_get_hl_by_name('Cursor', true); hl.blend = 100
                vim.opt.guicursor:append('a:Cursor/lCursor')
                vim.api.nvim_set_hl(0, 'Cursor', hl)
            end,
        })

        vim.api.nvim_create_autocmd('BufUnload', {
            desc = 'show cursor after alpha',
            callback = function()
                local hl = vim.api.nvim_get_hl_by_name('Cursor', true); hl.blend = 000
                vim.opt.guicursor:remove('a:Cursor/lCursor')
                vim.api.nvim_set_hl(0, 'Cursor', hl)
            end,
        })

    end
}
