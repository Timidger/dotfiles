" Zenburn

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="zenburn"


" Main
hi Normal guifg=#dcdccc guibg=#3f3f3f gui=none
hi Comment guifg=#7f9f7f guibg=#3f3f3f gui=italic

" Constant
hi Constant guifg=#dca3a3 guibg=#3f3f3f gui=bold
hi String guifg=#cc9393 guibg=#3f3f3f gui=none
hi Character guifg=#dca3a3 guibg=#3f3f3f gui=bold
hi Number guifg=#8cd0d3 guibg=#3f3f3f gui=none
hi Boolean guifg=#dca3a3 guibg=#3f3f3f gui=none
hi Float guifg=#c0bed1 guibg=#3f3f3f gui=none

" Variable Name
hi Identifier guifg=#efdcbc guibg=#3f3f3f gui=none
hi Function guifg=#efef8f guibg=#3f3f3f gui=none

" Statement
hi Statement guifg=#e3ceab guibg=#3f3f3f gui=none
hi Conditional guifg=#f0dfaf guibg=#3f3f3f gui=bold
hi Repeat guifg=#ffd7a7 guibg=#3f3f3f gui=bold
hi Label guifg=#dfcfaf guibg=#3f3f3f gui=underline
hi Operator guifg=#f0efd0 guibg=#3f3f3f gui=none
hi Keyword guifg=#f0dfaf guibg=#3f3f3f gui=bold
hi Exception guifg=#c3bf9f guibg=#3f3f3f gui=bold

" Preprocessor
hi PreProc guifg=#ffcfaf guibg=#3f3f3f gui=bold
hi Include guifg=#dfaf8f guibg=#3f3f3f gui=bold
hi Define guifg=#ffcfaf guibg=#3f3f3f gui=bold
hi Macro guifg=#ffcfaf guibg=#3f3f3f gui=bold
hi PreCondit guifg=#dfaf8f guibg=#3f3f3f gui=bold

" Type
hi Type guifg=#dfdfbf guibg=#3f3f3f gui=bold
hi StorageClass guifg=#c3bf9f guibg=#3f3f3f gui=bold
hi Structure guifg=#efefaf guibg=#3f3f3f gui=bold
hi Typedef guifg=#dfe4cf guibg=#3f3f3f gui=bold

" Special
hi Special guifg=#cfbfaf guibg=#3f3f3f gui=none
hi SpecialChar guifg=#dca3a3 guibg=#3f3f3f gui=bold
hi SpecialKey guifg=#9ece9e guibg=#444444 gui=none
hi Tag guifg=#e89393 guibg=#3f3f3f gui=bold
hi Delimiter guifg=#8f8f8f guibg=#3f3f3f gui=none
hi SpecialComment guifg=#82a282 guibg=#3f3f3f gui=bold
hi Debug guifg=#bca3a3 guibg=#3f3f3f gui=bold
hi Underlined guifg=#dcdccc guibg=#3f3f3f gui=underline
hi Ignore guifg=#3f3f3f guibg=#3f3f3f gui=none
hi Error guifg=#e37170 guibg=#3d3535 gui=bold
hi Todo guifg=#dfdfdf guibg=#3f3f3f gui=bold

" Window
hi StatusLine guifg=#313633 guibg=#ccdc90 gui=bold,reverse
hi StatusLineNC guifg=#2e3330 guibg=#88b090 gui=reverse
hi TabLine guifg=#d0d0b8 guibg=#222222 gui=none
hi TabLineSel guifg=#f0f0b0 guibg=#333333 gui=bold
hi TabLineFill guifg=#dccdcc guibg=#101010 gui=none
hi VertSplit guifg=#2e3330 guibg=#688060 gui=reverse

" Menu
hi Pmenu guifg=#9f9f9f guibg=#2c2e2e gui=none
hi PmenuSel guifg=#d0d0a0 guibg=#242424 gui=bold
hi PmenuSbar guifg=#000000 guibg=#2e3330 gui=none
hi PmenuThumb guifg=#040404 guibg=#a0afa0 gui=none
hi WildMenu guifg=#cbecd0 guibg=#2c302d gui=underline

" Selection
hi Visual guifg=#dcdccc guibg=#2f2f2f gui=none
hi VisualNOS guifg=#333333 guibg=#2f2f2f gui=bold,underline

" Message
hi ErrorMsg guifg=#80d4aa guibg=#2f2f2f gui=bold
hi WarningMsg guifg=#ffffff guibg=#333333 gui=bold
hi MoreMsg guifg=#ffffff guibg=#3f3f3f gui=bold
hi ModeMsg guifg=#ffcfaf guibg=#3f3f3f gui=none
hi Question guifg=#ffffff guibg=#3f3f3f gui=bold

" Mark
hi Folded guifg=#93b3a3 guibg=#333333 gui=none
hi FoldColumn guifg=#93b3a3 guibg=#333333 gui=none
hi SignColumn guifg=#9fafaf guibg=#343434 gui=bold
hi ColorColumn guifg=#dcdccc guibg=#484848 gui=none
hi LineNr guifg=#9fafaf guibg=#262626 gui=none
hi MatchParen guifg=#b2b2a0 guibg=#2e2e2e gui=bold

" Cursor
hi Cursor guifg=#000d18 guibg=#8faf9f gui=bold
hi CursorColumn guifg=#dcdccc guibg=#4f4f4f gui=none
hi CursorLine guifg=#dcdccc guibg=#434443 gui=none
hi CursorLineNr guifg=#d2d39b guibg=#262626 gui=bold
hi lCursor guifg=#3f3f3f guibg=#dcdccc gui=none

" Search
hi Search guifg=#ffffe0 guibg=#284f28 gui=none
hi IncSearch guifg=#f8f893 guibg=#385f38 gui=reverse

" Diff Mode
hi DiffAdd guifg=#709080 guibg=#313c36 gui=bold
hi DiffChange guifg=#dcdccc guibg=#333333 gui=none
hi DiffText guifg=#ecbcbc guibg=#41363c gui=bold
hi DiffDelete guifg=#333333 guibg=#464646 gui=bold

" Spell
hi SpellBad guifg=#dc8c6c guibg=#3f3f3f gui=undercurl
hi SpellCap guifg=#8c8cbc guibg=#3f3f3f gui=undercurl
hi SpellRare guifg=#bc8cbc guibg=#3f3f3f gui=undercurl
hi SpellLocal guifg=#9ccc9c guibg=#3f3f3f gui=undercurl

" Misc
hi NonText guifg=#5b605e guibg=#3f3f3f gui=bold
hi Directory guifg=#9fafaf guibg=#3f3f3f gui=bold
hi Title guifg=#efefef guibg=#3f3f3f gui=bold
