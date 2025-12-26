return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "prettier",
        "eslint_d",
        "alejandra",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)

      local mr = require("mason-registry")
      mr.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end)
    end,
  },

  { "neovim/nvim-lspconfig" },

  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null = require("null-ls")

      null.setup({
        sources = {
          null.builtins.formatting.stylua,
          null.builtins.formatting.shfmt,
          null.builtins.formatting.prettier,
          null.builtins.formatting.alejandra,
          null.builtins.diagnostics.eslint_d,
        },

        on_attach = function(client, bufnr)
          -- Keymap: :leader+t to manually format
          if client.supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<leader>t", function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end, { desc = "Format buffer", buffer = bufnr })

            -- Format on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })
    end,
  },
}

