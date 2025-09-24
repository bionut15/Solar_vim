
return {
	
{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
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

    vim.cmd([[colorscheme everforest]])

    -- Remove backgrounds for transparency
    local groups = {
      "Normal", "NormalNC", "SignColumn", "EndOfBuffer",
      "MsgArea", "NormalFloat", "FloatBorder"
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end

    -- Set a custom lualine background
    -- local lualine_bg = "#1e2326" -- <- change this to your preferred background color
    -- local lualine_fg = "#d3c6aa" -- Everforest's light text
    --
    -- require("lualine").setup({
    --   options = {
    --     theme = "everforest",
    --     section_separators = "",
    --     component_separators = "",
    --     disabled_filetypes = {},
    --     globalstatus = true,
    --   },
    --   sections = {
    --     lualine_a = { { "mode", color = { bg = lualine_bg, fg = lualine_fg } } },
    --     lualine_b = { { "branch", color = { bg = lualine_bg, fg = lualine_fg } } },
    --     lualine_c = { { "filename", color = { bg = lualine_bg, fg = lualine_fg } } },
    --     lualine_x = { { "encoding", color = { bg = lualine_bg, fg = lualine_fg } } },
    --     lualine_y = { { "filetype", color = { bg = lualine_bg, fg = lualine_fg } } },
    --     lualine_z = { { "location", color = { bg = lualine_bg, fg = lualine_fg } } },
    --   },
    -- })
  end,
  },
}
