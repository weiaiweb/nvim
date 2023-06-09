require('dashboard').setup({
  theme = 'doom',
  config = {
    header = {
      [[                                                                              ]],
      [[                                                                              ]],
      [[=================     ===============     ===============   ========  ========]],
      [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
      [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
      [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
      [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
      [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
      [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
      [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
      [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
      [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
      [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
      [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
      [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
      [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
      [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
      [[||.=='    _-'                                                     `' |  /==.||]],
      [[=='    _-'                        N E O V I M                         \/   `==]],
      [[\   _-'                                                                `-_   /]],
      [[ `''                                                                          ]],
      [[                                                                              ]],
      [[                                                                              ]],
    },
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File',
        desc_hl = 'String',
        key = 'F',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = ' ',
        desc = 'Find Buffer',
        key = 'B',
        keymap = 'SPC f b',
        action = 'Telescope buffers'
      },
      {
        icon = ' ',
        desc = 'Find Colors',
        key = 'C',
        keymap = 'SPC f c',
        action = 'Telescope colorscheme'
      },
      {
        icon = ' ',
        desc = 'Find Help',
        key = 'H',
        keymap = 'SPC f h',
        action = 'Telescope help_tags'
      },
      {
        icon = ' ',
        desc = 'Edit .zprofile',
        key = 'E',
        keymap = 'SPC e z',
        action = 'edit ~/.zprofile'
      },
    },
    footer = {}  --your footer
  }
})
