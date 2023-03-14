local M = {}

M.treesitter = {
  ensure_installed = {
    "lua", "go", "cpp", "c", "bash", "json", "json5", "gomod", "gowork", "yaml", "javascript", "java",
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",

    "gopls",
    "goimports",
    "eslint-lsp",
    "prettier"
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    -- dotfiles = true,
    custom = { "node_modules" },
  },
  git = {
    enable = true,
  },
  hijack_unnamed_buffer_when_opening = true,
  hijack_cursor = true,
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      error = "",
    },
  },
  system_open = { cmd = "thunar" },
  sync_root_with_cwd = true,
  renderer = {
    highlight_opened_files = "name",
    highlight_git = true,
    group_empty = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  tab = {
    sync = {
      open = true,
      close = true,
    },
  },
}

M.telescope = {
  defaults = {
    file_ignore_patterns = { "node_modules", ".docker", ".git", "yarn.lock" },
  },
  extensions = {
  },
  extensions_list = { "themes", "terms", "notify" },
}

M.alpha = {
  -- header = {
  --   val = {
  --     "           ▄ ▄                   ",
  --     "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
  --     "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
  --     "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
  --     "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
  --     "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
  --     "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
  --     "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
  --     "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
  --   },
  -- },
  -- header = {
  --   val = {
  --     "   🭇🬭🬭🬭🬭🬭🬭🬭🬭🬼    ",
  --     "  🭉🭁🭠🭘    🭣🭕🭌🬾   ",
  --     "  🭅█ ▁     █🭐  ",
  --     "  ██🬿      🭊██   ",
  --     " 🭋█🬝🮄🮄🮄🮄🮄🮄🮄🮄🬆█🭀   ",
  --     " 🭤🭒🬺🬹🬱🬭🬭🬭🬭🬵🬹🬹🭝🭙   ",
  --     "                 ",
  --   },
  -- },
  header = {
    val = { 
      [[                                           ,o88888 ]],
      [[                                        ,o8888888' ]],
      [[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
      [[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
      [[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
      [[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
      [[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
      [[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
      [[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
      [[             . ..:.::o:ooooOoCoCCC"o:o             ]],
      [[             . ..:.::o:o:,cooooCo"oo:o:            ]],
      [[          `   . . ..:.:cocoooo"'o:o:::'            ]],
      [[          .`   . ..::ccccoc"'o:o:o:::'             ]],
      [[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
      [[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
      [[     ...:.'.:.::::"'    . . . . .'                 ]],
      [[    .. . ....:."' `   .  . . ''                    ]],
      [[  . . . ...."'                                     ]],
      [[  .. . ."'                                         ]],
    },
  },
  -- header = {
  --   val = ascii.get_random("planets", "planets"),
  -- },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
  },
}

return M
