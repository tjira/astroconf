return {
    {
        "goolord/alpha-nvim",
        opts = function(_, opts)
            opts.section.header.val = {
                [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
                [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
                [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
                [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
                [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
                [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
            }
            opts.section.buttons.val = {
                require("astronvim.utils").alpha_button("LDR n", "New File")
            }
            return opts
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            opts.ensure_installed = { 'bash', 'c', 'cpp', 'lua', 'markdown', 'markdown_inline', 'python', 'regex', 'vim' }
            return opts
        end
    }
}
