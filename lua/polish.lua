-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

local ftSetupGrp = vim.api.nvim_create_augroup("FileTypeSetup", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.vert", "*.frag" },
  command = [[ set ft=glsl ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.json.jbuilder",
  command = [[ set ft=ruby ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = ".env*",
  command = [[ set ft=sh ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "tsconfig.json",
  command = [[ set ft=jsonc ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.h",
  command = [[ set ft=c ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = ".env*",
  command = [[ set ft=sh ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.jlib",
  command = [[ set ft=javascript ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufReadPre" }, {
  pattern = "*.asm",
  command = [[ let g:asmsyntax = "fasm" ]],
  group = ftSetupGrp,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.json.props",
  command = [[ set ft=ruby ]],
  group = ftSetupGrp,
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
--   callback = function()
--     vim.lsp.buf.code_action { apply = true, context = { only = { "source.organizeImports" }, diagnostics = {} } }
--   end,
-- })
