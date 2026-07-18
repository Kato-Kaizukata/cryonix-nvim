local colors = require('cryonix.palette').hexa

return {
    background = { bg = colors.foreground },
    fill       = { bg = colors.foreground },

    buffer_selected = { fg = colors.blue_bright },
    hint_selected   = { fg = colors.blue_normal },
    info_selected   = { fg = colors.blue_normal },
    pick_selected   = { fg = colors.blue_normal },
    tab_selected    = { fg = colors.blue_normal },

    close_button         = { bg = colors.foreground },
    close_button_visible = { bg = colors.background },

    separator              = { bg = colors.foreground, fg = colors.foreground },
    separator_selected     = { bg = colors.foreground, fg = colors.foreground },
    separator_visible      = { bg = colors.foreground, fg = colors.foreground },
    tab_separator          = { bg = colors.foreground, fg = colors.foreground },
    tab_separator_selected = { bg = colors.foreground, fg = colors.foreground },

    warning = { fg = colors.red_normal }
}
