return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- Load immediately to prevent background "flicker"
  config = function()
    require("transparent").setup({
      -- Add groups that are often solid by default
      extra_groups = {
        "NormalFloat", -- Floating windows (LSP, etc)
        "NvimTreeNormal", -- If you use nvim-tree
        "TelescopeNormal", -- Telescope background
        "TelescopeBorder", -- Telescope border
        "MasonNormal", -- Mason background
        "LazyNormal", -- Lazy UI background
      },
      exclude_groups = {}, -- Groups you want to keep opaque
    })
  end,
}
