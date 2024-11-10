local options = {
  formatters_by_ft = {
    astro = { "prettierd" },
    css = { "prettierd" },
    gdscript = { "gdformat" },
    go = { "gofmt" },
    haskell = { "ormolu" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    json = { "prettierd" },
    lua = { "stylua" },
    mdx = { "prettierd" },
    python = { "black" },
    rust = { "rustfmt" },
    svelte = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    verilog = { "verible" },
    yaml = { "prettierd" },
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
