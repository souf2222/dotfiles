return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      globalstatus = true,
      component_separators = "",
      section_separators = { left = "", right = "" },
      theme = {
        normal = {
          a = { bg = "#0A0A0A", fg = "#58a6ff", bold = true },
          b = { bg = "#0A0A0A", fg = "#ECE7E8" },
          c = { bg = "#0A0A0A", fg = "#ECE7E8" },
        },
        insert = {
          a = { bg = "#0A0A0A", fg = "#3fb950", bold = true },
        },
        visual = {
          a = { bg = "#0A0A0A", fg = "#d29922", bold = true },
        },
        replace = {
          a = { bg = "#0A0A0A", fg = "#f85149", bold = true },
        },
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_c = { "filename" },
      lualine_x = { "diagnostics" },
      lualine_y = { "filetypesds" },
      lualine_z = { "location" },
    },
  },
}
