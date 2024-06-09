if true then
  return {}
end
return {
  "neovim/nvim-lspconfig",
  opts = {
    codelens = {
      enabled = true,
    },
  },
}
