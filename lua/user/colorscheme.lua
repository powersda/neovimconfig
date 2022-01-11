vim.api.nvim_exec(
[[
    let g:sonokai_style = "default"
    let g:sonokai_disable_italic_comment = v:false
    let g:sonokai_enable_italic = v:false
    let g:sonokai_transparent_background = v:true
    let g:sonokai_menu_selection_background = 'green'
    let g:sonokai_better_performance = v:true
]],
false)

vim.cmd [[
    try
      colorscheme sonokai
    catch /^Vim\%((\a\+)\)\=:E185/
      colorscheme default
      set background=dark
    endtry
]]

