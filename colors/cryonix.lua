

vim.api.nvim_cmd({ cmd = 'highlight', args = { 'clear' }}, {})

vim.o.termguicolors = true
vim.g.colors_name   = 'cryonix'


local colors = require('cryonix.palette').hexa

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end


--\[ Base UI ]/--
hl('Normal',       { bg = colors.background,     fg = colors.white_normal   })

hl('CursorLine',   { bg = colors.foreground,     underline = true           })
hl('CursorColumn', { bg = colors.foreground      })
hl('CursorLineNr', { fg = colors.yellow_bright,  underline = true,          bold = true })
hl('TermCursor',   { bg = reverse,               fg = reverse               })

hl('LineNr',       { fg = colors.blue_bright     })

hl('SignColumn',   { bg = colors.foreground,     fg = colors.cyan_bright    })
hl('ColorColumn',  { bg = colors.black_normal    })
hl('Folded',       { bg = colors.foreground,     fg = colors.cyan_bright    })
hl('FoldColumn',   { bg = colors.foreground,     fg = colors.cyan_bright    })

hl('Visual',       { bg = colors.foreground      })
hl('Search',       { bg = colors.yellow_normal,  fg = colors.black_normal   })
hl('IncSearch',    { bg = reverse,               fg = reverse               })
hl('MatchParen',   { bg = colors.cyan_normal     })

hl('StatusLine',   { bg = colors.foreground,     fg = colors.white_bright,  bold = true })
hl('StatusLineNC', { bg = colors.background,     fg = colors.black_bright   })
hl('VertSplit',    { bg = colors.background,     fg = colors.black_bright   })
hl('WildMenu',     { bg = colors.blue_normal,    fg = colors.black_normal,  bold = true })

hl('TabLine',      { bg = colors.background,     fg = colors.black_bright   })
hl('TabLineSel',   { bg = colors.blue_normal,    fg = colors.white_bright,  bold = true })
hl('TabLineFill',  { bg = colors.black_normal    })

hl('Pmenu',        { bg = colors.foreground,     fg = colors.white_normal   })
hl('PmenuSel',     { bg = colors.blue_normal,    fg = colors.black_normal,  bold = true })
hl('PmenuSbar',    { bg = colors.black_bright    })
hl('PmenuThumb',   { bg = colors.blue_bright     })

hl('Directory',    { fg = colors.blue_bright,    bold = true                })
hl('Title',        { fg = colors.green_bright,   bold = true                })
hl('ErrorMsg',     { bg = colors.red_normal,     fg = colors.white_bright,  bold = true })
hl('WarningMsg',   { bg = colors.black_normal,   fg = colors.yellow_normal, bold = true })
hl('MoreMsg',      { fg = colors.green_normal,   bold = true                })
hl('ModeMsg',      { fg = colors.blue_normal,    bold = true                })
hl('Question',     { fg = colors.green_normal    })
hl('NonText',      { fg = colors.blue_normal     })
hl('SpecialKey',   { fg = colors.cyan_normal     })

hl('DiffAdd',      { bg = colors.blue_normal,    fg = colors.white_bright   })
hl('DiffChange',   { bg = colors.magenta_normal, fg = colors.white_bright   })
hl('DiffDelete',   { bg = colors.red_normal,     fg = colors.white_bright   })
hl('DiffText',     { bg = colors.blue_normal,    fg = colors.black_normal,  bold = true })

hl('SpellBad',     { fg = colors.red_bright,     undercurl = true })
hl('SpellCap',     { fg = colors.yellow_bright,  undercurl = true })
hl('SpellRare',    { fg = colors.magenta_bright, undercurl = true })
hl('SpellLocal',   { fg = colors.cyan_bright,    undercurl = true })


-- [ Syntax ]
hl('Comment',        { fg = colors.black_bright,   italic = true })
hl('Constant',       { fg = colors.magenta_bright  })
hl('Identifier',     { fg = colors.cyan_bright,    bold = true })
hl('Statement',      { fg = colors.yellow_bright,  bold = true })
hl('PreProc',        { fg = colors.magenta_bright  })
hl('Type',           { fg = colors.green_normal,   bold = true })
hl('Special',        { fg = colors.yellow_normal   })

hl('Underlined',     { fg = colors.blue_normal,    underline = true })
hl('Ignore',         { fg = colors.black_bright    })
hl('Error',          { bg = colors.red_normal,     fg = colors.white_bright, bold = true })
hl('Todo',           { bg = colors.green_bright,   fg = colors.black_normal, bold = true })


-- [ LSP diagnostics ]
hl('DiagnosticError',          { fg = colors.red_bright     })
hl('DiagnosticWarn',           { fg = colors.yellow_normal  })
hl('DiagnosticInfo',           { fg = colors.blue_bright    })
hl('DiagnosticHint',           { fg = colors.cyan_bright    })
hl('DiagnosticUnderlineError', { sp = colors.red_bright,    undercurl = true })
hl('DiagnosticUnderlineWarn',  { sp = colors.yellow_normal, undercurl = true })
hl('DiagnosticUnderlineInfo',  { sp = colors.blue_bright,   undercurl = true })
hl('DiagnosticUnderlineHint',  { sp = colors.cyan_bright,   undercurl = true })


-- [ Bufferline ]
hl("BufferLineSeparator",            { bg = colors.foreground, fg = colors.foreground })
hl("BufferLineSeparatorSelected",    { fg = colors.foreground  })
hl("BufferLineSeparatorVisible",     { fg = colors.foreground  })
hl("BufferLineTabSeparator",         { bg = colors.foreground, fg = colors.foreground })
hl("BufferLineTabSeparatorSelected", { fg = colors.foreground  })


-- [ Nvim Tree ]
hl('NvimTreeNormal',       { bg = colors.foreground })
hl('NvimTreeWinSeparator', { fg = colors.foreground })
