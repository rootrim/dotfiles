return {
   {
      "williamboman/mason.nvim",
      lazy = false,
      opts = {
         ensure_installed = {
            "mypy",
            "ruff",
            "pyright",
            "stylua"
         }
      },
      config = function()
         require("mason").setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      lazy = false,
      opts = {
         auto_install = true,
      },
   },
   {
      "neovim/nvim-lspconfig",
      lazy = false,
      config = function()
         local capabilities = require("cmp_nvim_lsp").default_capabilities()

         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.pyright.setup({
            capabilities = capabilities,
         })
         lspconfig.bashls.setup({
            capabilities = capabilities,
         })
         lspconfig.html.setup({
            capabilities = capabilities,
         })
         lspconfig.cssls.setup({
            capabilities = capabilities,
         })
         lspconfig.taplo.setup({
            capabilities = capabilities,
         })
         lspconfig.markdown_oxide.setup({
            capabilities = capabilities,
         })
         lspconfig.jsonls.setup({
            capabilities = capabilities,
         })

         lspconfig.hyprls.setup({
            cmd = { "hyprls" },
            root_dir = function()
               return vim.fn.getcwd() -- veya uygun bir root_dir fonksiyonu
            end,
            capabilities = capabilities,
         })

         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
         vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
         vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
         vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
      end,
   },
}
