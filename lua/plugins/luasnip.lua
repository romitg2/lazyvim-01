return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = vim.fn.stdpath("lua") .. "/snippets/" })
      -- reference: https://github.com/ianchesal/dotfiles/commit/2e81e58f6958efcce20ed2398d481e338669ff00#diff-5cbfc657ebf5c0bed3333ddd81b6cadf5f14d9779e66c9514d19b38af9c290f6
    end,
  },
}
