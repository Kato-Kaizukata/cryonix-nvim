local colors = require('cryonix.palette').hexa

local cryonix = {
    normal = {
        a = { bg = colors.blue_normal, fg = colors.white_normal, gui = 'bold' },
        b = { bg = colors.foreground,  fg = colors.blue_normal  },
        c = { bg = colors.foreground,  fg = colors.white_normal },
    },
    inactive = {
        a = { bg = colors.black_bright, fg = colors.white_normal, gui = 'bold' },
        b = { bg = colors.foreground,   fg = colors.blue_normal  },
        c = { bg = colors.foreground,   fg = colors.black_bright, gui = 'italic'},
    },
    command = {
        a = { bg = colors.cyan_bright, fg = colors.black_normal, gui = 'bold' }
    },
    insert  = {
	a = { bg = colors.red_bright, fg = colors.white_bright, gui = 'bold' }
    },
    visual  = {
	a = { bg = colors.magenta_normal, fg = colors.white_normal, gui = 'bold' }
    },
}

return cryonix
 
