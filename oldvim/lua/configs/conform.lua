local options = {
  formatters_by_ft = {
    astro = { "prettierd" },
    css = { "prettierd" },
    c = { "clangd" },
    cpp = { "clangd" },
    gdscript = { "gdformat" },
    go = { "gofmt" },
    haskell = { "ormolu" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
    lua = { "stylua" },
    mdx = { "prettierd" },
    markdown = { "prettierd" },
    python = { "black" },
    rust = { "rustfmt" },
    svelte = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    verilog = { "verible" },
    yaml = { "prettierd" },
    xml = { "xmlformatter" },
  },
  format_after_save = {
    lsp_fallback = true,
    quiet = true,
  },
  formatters = {
    gdformat = {
      command = "gdformat",
      args = "$FILENAME",
      stdin = false,
    },
    verible = {
      command = "verible-verilog-format",
      prepend_args = { "--indentation_spaces", "4" },
    },
  },
}

return options
