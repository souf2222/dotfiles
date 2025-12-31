return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      globalstatus = true,
      component_separators = "",
      section_separators = { left = "", right = "" },
      theme = {
        normal = {
          a = { bg = "#0A0A0A", fg = "#e3b341", bold = true },
          b = { bg = "#0A0A0A", fg = "#979293" },
          c = { bg = "#0A0A0A", fg = "#979293" },
          x = { bg = "#0A0A0A", fg = "#979293" },
          y = { bg = "#0A0A0A", fg = "#979293" },
          z = { bg = "#0A0A0A", fg = "#979293" },
        },
        insert = {
          a = { bg = "#0A0A0A", fg = "#e3b341", bold = true },
        },
        visual = {
          a = { bg = "#0A0A0A", fg = "#e3b341", bold = true },
        },
        replace = {
          a = { bg = "#0A0A0A", fg = "#e3b341", bold = true },
        },
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff" },
      lualine_c = { "filename" },
      lualine_x = { "diagnostics" },
      lualine_y = { "filetype" },
      lualine_z = { "location" },
    },
  },
}
