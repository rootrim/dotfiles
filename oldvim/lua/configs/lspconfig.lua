require("nvchad.configs.lspconfig").defaults()
local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities
local util = require "lspconfig.util"

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "gopls",
  "cssls",
  "clangd",
  "pylsp",
  "ruff",
  "rust_analyzer",
  "hls",
  "hyprls",
  "bashls",
  "markdown_oxide",
  "arduino_language_server",
  "gleam",
  "qml_lsp",
}

for _, lsp in ipairs(servers) do
  if lsp ~= "pylsp" or "hls" then
    lspconfig[lsp].setup {
      on_init = on_init,
      on_attach = on_attach,
      capabilities = capabilities,
    }
  elseif lsp == "pylsp" then
    lspconfig.pylsp.setup {
      on_init = on_init,
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        pylsp = {
          plugins = {
            pydocstyle = { enabled = false }, -- Disable pydocstyle (docstring checks)
            jedi_completion = {
              enabled = true,
              include_params = true,
              fuzzy = true,
              cache_for = { "numpy", "pandas", "matplotlib", "pytorch", "cv2" },
            },
            pyflakes = { enabled = true },
            pycodestyle = { enabled = true, maxLineLength = 80, ignore = { "E501", "E203" } },
            autopep8 = { enabled = true },
            flake8 = { enabled = false },
            yapf = { enabled = true },
          },
          jedi = { auto_import_modules = { "numpy", "matplotlib" } },
        },
      },
    }
  elseif lsp == "hls" then
    lspconfig.hls.setup {
      on_init = on_init,
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = { "haskell-language-server-wrapper", "--lsp" },
      filetypes = { "haskell", "lhaskell" },
      root_dir = util.root_pattern("hie.yaml", "stack.yaml", "cabal.project", "*.cabal", "package.yaml"),
      single_file_support = true,
      settings = {
        haskell = {
          hlintOn = true,
          formattingProvider = "ormolu",
          cabalFormattingProvider = "cabalfmt",
        },
      },
    }
  end
end
