return {
   {
      "williamboman/mason.nvim",
      lazy = false,
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
         lspconfig.cssls.setup({
            capabilities = capabilities,
         })
         lspconfig.tsserver.setup({
            capabilities = capabilities,
         })
         lspconfig.html.setup({
            capabilities = capabilities,
         })
         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.pyright.setup({
            capabilities = capabilities,
         })
         lspconfig.hyprls.setup({
            capabilities = capabilities,
         })
         lspconfig.bashls.setup({
            capabilities = capabilities,
         })

         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
         vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
         vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
         vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
         vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
      end,
   },
}
