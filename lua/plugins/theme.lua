return {
	
{'shatur/neovim-ayu', priority = 1000 , config = function ()

	require('ayu').setup({
  terminal = true,
    overrides = {
 
        Normal = { bg = "None" },
        BufferLineBackground= { bg = "None" },
        TablineFill = { bg = "None" },
        NormalFloat = { bg = "none" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },
        FoldColumn = { bg = "None" },
        VertSplit = { bg = "None" },
    },
})
	
end},

{ "ellisonleao/gruvbox.nvim", priority = 4000 , config = function ()

    vim.cmd([[colorscheme gruvbox]])
	 require("gruvbox").setup({

  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
end
, opts = ...},
{
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    -- Everforest setup
    require("everforest").setup({
     background = "hard",
      transparent_background_level = 2,
    })


    -- Remove backgrounds for transparency
    local groups = {
      "Normal", "NormalNC", "SignColumn", "EndOfBuffer",
      "MsgArea", "NormalFloat", "FloatBorder"
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end

  end,
  },
}
