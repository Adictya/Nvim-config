local gl = require('galaxyline')
local gls = gl.section

local colors = {
  darkblue = '#081633',
  orange = '#FF8800',
  purple = '#5d4d9a',
  grey = '#c0c0c0',
  red      =  '#ff5c57',
  green    =  '#5af78e',
  yellow   =  '#f3f99d',
  blue     =  '#57c7ff',
  magenta  =  '#ff6ac1',
  cyan     =  '#9aedfe',
  bg	   =  '62932',
  black    =  '#000000'
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 41 then
    return true
  end
  return false
end

local onlycheckwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 41 then
    return false
  end
  return true
end

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

-- gls.left[1] = {
--   FirstElement = {
--     -- provider = function() return '▋' end,
--     provider = function() return ' ' end,
--     highlight = {colors.bg,colors.bg}
--   },
-- }
-- gls.left[2] = {
--   ViMode = {
--     provider = function()
--       local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',V= 'VISUAL', [''] = 'VISUAL'}
--       return alias[vim.fn.mode()]
--     end,
--     separator = ' ',
--     separator_highlight = {colors.yellow,function()
--       if not buffer_not_empty() then
--         return colors.purple
--       end
--       return colors.purple
--     end},
--     highlight = {colors.grey,colors.purple,'bold'},
--   },
-- }
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.magenta,
                          i = colors.green,
                          v = colors.blue,
                          [''] = colors.blue,
                          V = colors.blue,
                          c = colors.purple,
                          no = colors.magenta,
                          s = colors.orange,
                          S = colors.orange,
                          [''] = colors.orange,
                          ic = colors.yellow,
                          R = colors.red,
                          Rv = colors.red,
                          cv = colors.red,
                          ce=colors.red,
                          r = colors.cyan,
                          rm = colors.cyan,
                          ['r?'] = colors.cyan,
                          ['!']  = colors.red,
                          t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim.fn.mode()])
      return '  Neovim '
    end,
    condition = checkwidth,
    separator = ' ',
    separator_highlight = {colors.yellow,function()
      if not buffer_not_empty() then
        return colors.bg
      end
      return colors.bg
    end},
    highlight = {colors.black,colors.bg,'bold'},
  },
}

-- gls.left[4] = {
--   FileName = {
--     provider = {'FileSize'},
--     condition = buffer_not_empty,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.magenta,colors.bg}
--   }
-- }

gls.left[3] = {
  GitIcon = {
    provider = function() return ' ' end,
    condition = checkwidth,
    highlight = {colors.orange,colors.bg},
  }
}
gls.left[4] = {
  GitBranch = {
    provider = 'GitBranch',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    condition = checkwidth,
    highlight = {colors.grey,colors.bg},
  }
}


gls.left[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.green,colors.bg},
  }
}
gls.left[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.left[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}
gls.left[8] = {
  LeftEnd = {
    provider = function() return ' ' end,
    condition = checkwidth,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
}
gls.left[9] = {
  DiagnosticError = {
    condition = checkwidth,
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[10] = {
  Space = {
    provider = function () return '' end
  }
}
gls.left[11] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    condition = checkwidth,
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}
gls.left[12] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    condition = checkwidth,
    icon = '   ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.left[13] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    condition = checkwidth,
    icon = '   ',
    highlight = {colors.orange,colors.bg},
  }
}

-- gls.left[14] = {
--   Space = {
--     provider = function () return '' end,
--     condition = onlycheckwidth,
--     highlight = {colors.bg,colors.magenta}
--   }
-- }
gls.left[14] = {
  InitSep = {
    provider = function () return ' ' end,
    condition = onlycheckwidth,
    highlight = {colors.black,colors.magenta,'bold'},
  }
}
gls.left[15] = {
  BufferType = {
    provider = 'FileName',
    separator = '',
    condition = onlycheckwidth,
    separator_highlight = {colors.magenta,colors.bg},
    highlight = {colors.black,colors.magenta,'bold'},
  }
}

-- gls.left[16] = {
--   Space = {
--     provider = function () return '' end,
--     condition = onlycheckwidth,
--     highlight = {colors.bg,colors.magenta}
--   }
-- }
gls.right[1] ={
  FileIcon = {
    separator = ' ',
    provider = 'FileIcon',
    condition = checkwidth,
    separator_highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}


gls.right[3] = {
  LineInfo = {
    provider = 'LineColumn',
    condition = checkwidth,
    separator = ' | ',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.grey,colors.bg},
  },
}
gls.right[4] = {
  PerCent = {
    provider = 'LinePercent',
    condition = checkwidth,
    separator = ' |',
    separator_highlight = {colors.darkblue,colors.bg},
    highlight = {colors.grey,colors.bg},
  }
}
gls.right[5] = {
  ScrollBar = {
    condition = checkwidth,
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.right[6] = {
  CurrentTime = {
    condition = checkwidth,
    separator = ' ',
    provider = function () return os.date(' %I:%M %p ') end,
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.yellow,colors.purple},
  }
}

gl.short_line_list = {'Nvimtree','vista','dbui','startify'}

gls.short_line_left[1] = {
  Space = {
    provider = function () return '' end,
    highlight = {colors.bg,colors.magenta}
  }
}
gls.short_line_left[2] = {
  BufferType = {
    provider = 'FileName',
    separator = '',
    separator_highlight = {colors.magenta,colors.bg},
    highlight = {colors.bg,colors.magenta}
  }
}
gls.short_line_left[3] = {
  Space = {
    provider = function () return '' end,
    highlight = {colors.bg,colors.magenta}
  }
}
-- gls.short_line_left[1] = {
--   BufferType = {
--     provider = 'FileTypeName',
--     separator = ' ',
--     separator_highlight = {colors.red,colors.bg},
--     highlight = {colors.fg,colors.red}
--   }
-- }

-- gls.short_line_left[1] = {
--   LeftEnd = {
--     provider = function() return ' ' end,
--     condition = checkwidth,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.purple,colors.bg}
--   }
-- }
gls.short_line_left[6] = {
  DiagnosticError = {
    condition = checkwidth,
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.short_line_left[7] = {
  Space = {
    provider = function () return '' end
  }
}
gls.short_line_left[8] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    condition = checkwidth,
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}
gls.short_line_left[9] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    condition = checkwidth,
    icon = '   ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.short_line_left[10] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    condition = checkwidth,
    icon = '   ',
    highlight = {colors.orange,colors.bg},
  }
}


