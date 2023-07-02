require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.30, -- percentage of the shade to apply to the inactive window
    },
    transparent_background = true, -- disables setting the background color.
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
    },

    highlight_overrides = {
        mocha = function()
            return {
                LineNr = { fg = '#FFFF00' },
            }
        end,
    },
})

vim.cmd.colorscheme "catppuccin-mocha"
