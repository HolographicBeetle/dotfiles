return {'goolord/alpha-nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      local function renderButton(shortcut, text, command)
        return { type = "button",
          val = text,
          on_press = function() vim.cmd(command) end,
          opts = {
            position = "center",
            hl = "@keyword",
            shortcut = shortcut,
            align_shortcut = "right",
            hl_shortcut = "@constructor",
            cursor = 1,
            width = 24,
          }
        }
      end

      require('alpha').setup({
        layout = {
          { type = 'padding', val = 8 },
          -- TITLE --
          { type = 'text',
            val = {

[[                                  .                         ]],
[[                       .;:'.     ':;.                       ]],
[[                      .cd,        cd'                       ]],
[[                      'dx'       .cx:.                      ]],
[[                      'dk,       .oO:.                      ]],
[[                      .oOo,.    .:kO;                       ]],
[[               ....   .c0x'      ,kO;   .....               ]],
[[                  ..'..;kx'      ,xo. ...                   ]],
[[                    .'.,oo::'.';::lc...                     ]],
[[                    .. .,oxxolodxd:. ...                    ]],
[[                    ..  ,dddddxddxc. .'.                    ]],
[[                    ... 'odooodood:. ..                     ]],
[[                     .'..;ooc:clol'.',.                     ]],
[[                    ....:xdc,,,;lxdc'....                   ]],
[[                  ...'''l0Od:,,:okkd:'....                  ]],
[[                 ''   .'c0Kxc,,:dOd,..  .,.                 ]],
[[                .,' ..''o0kc,,,;lOOc'.. ....                ]],
[[             ....  .;c,,o0kc,,,;oOk:..'.   ....             ]],
[[            ...    .....:k0d;,;cxOo,....     ..             ]],
[[                   ..  .'lOOc;cdOx;.   .                    ]],
[[                   ,,    .:olclol,.   ..                    ]],
[[                   ;;                 .'.                   ]],
[[                 ....                  .,.                  ]],
[[                .;,.                    .,'                 ]],
[[                ...                      ..                 ]],
		},

            opts = {
              position = 'center',
              hl = '@function',
            },
          },
          { type = 'padding', val = 2 },
          -- OPTIONS --
          renderButton('SPC e', 'File Explorer', 'Ex'),
          { type = 'padding', val = 1 },
          renderButton('SPC', 'Quick ref', ' '),
          { type = 'padding', val = 1 },
          renderButton('<C-q>', 'Exit', 'qa!'),
          -- Footer --
          { type = 'padding', val = 4 },
        },
        opts = {
          margin = 5,
        }
      })
    end
  }
