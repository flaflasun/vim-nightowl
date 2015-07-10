"===============================================================================
" FILE:       nightowl.vim
" Maintainer: flaflasun
" URL:        https://github.com/flaflasun/vim-nightowl
" Modified:   1 Jan 2015.
" License:    MIT license {{{
"   Copyright (c) 2015 flaflasun
"
"   Permission is hereby granted, free of charge, to any person obtaining a copy
"   of this software and associated documentation files (the "Software"), to deal
"   in the Software without restriction, including without limitation the rights
"   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"   copies of the Software, and to permit persons to whom the Software is
"   furnished to do so, subject to the following conditions:
"
"   The above copyright notice and this permission notice shall be included in
"   all copies or substantial portions of the Software.
"
"   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"   THE SOFTWARE.
" }}}
"===============================================================================
" Description:"{{{

" The code taken from solarized.vim and hybrid.vim.
" https://github.com/altercation/vim-colors-solarized
" https://github.com/w0ng/vim-hybrid

" }}}

"----------------------------------------------------------------------------
" Initializetion: {{{

if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name='nightowl'

" }}}

"-------------------------------------------------------------------------------
" GUI And CUI Color Settings: {{{

if has('gui_running')
  let s:ui              = 'gui'
  let s:blue            = '#0000ff'
  let s:cornsilk        = '#ffffd7'
  let s:cyan            = '#00ffff'
  let s:darkgoldenrod   = '#af8700'
  let s:darkblue        = '#00005f'
  let s:darkgreen       = '#005f00'
  let s:darkred         = '#5f0000'
  let s:deepskyblue     = '#0087d7'
  let s:green           = '#00ff00'
  let s:grey11          = '#1c1c1c'
  let s:grey15          = '#262626'
  let s:grey27          = '#444444'
  let s:grey30          = '#4e4e4e'
  let s:grey37          = '#5f5f5f'
  let s:grey54          = '#8a8a8a'
  let s:grey85          = '#dadada'
  let s:indianred       = '#ff5f87'
  let s:lightgoldenrod1 = '#ffff5f'
  let s:lightgoldenrod2 = '#d7d787'
  let s:lightsteelblue  = '#dfffff'
  let s:magenta         = '#af00af'
  let s:mediumturquoise = '#5fd7d7'
  let s:navyblue        = '#00005f'
  let s:orange          = '#ff8700'
  let s:palegreen       = '#87d787'
  let s:red             = '#ff0000'
  let s:skyblue         = '#5fafd7'
  let s:yellow1         = '#ffff00'
  let s:yellow2         = '#d7d700'
else
  let s:ui              = 'cterm'
  let s:blue            = '21'
  let s:cornsilk        = '230'
  let s:cyan            = '51'
  let s:darkgoldenrod   = '136'
  let s:darkblue        = '17'
  let s:darkgreen       = '22'
  let s:darkred         = '52'
  let s:deepskyblue     = '32'
  let s:green           = '46'
  let s:grey11          = '234'
  let s:grey15          = '235'
  let s:grey27          = '238'
  let s:grey30          = '239'
  let s:grey37          = '59'
  let s:grey54          = '245'
  let s:grey85          = '253'
  let s:indianred       = '204'
  let s:lightgoldenrod1 = '227'
  let s:lightgoldenrod2 = '186'
  let s:lightsteelblue  = '195'
  let s:magenta         = '127'
  let s:mediumturquoise = '80'
  let s:navyblue        = '17'
  let s:orange          = '208'
  let s:palegreen       = '114'
  let s:red             = '196'
  let s:skyblue         = '74'
  let s:yellow1         = '226'
  let s:yellow2         = '184'
endif

let s:none = 'NONE'

" }}}

"-------------------------------------------------------------------------------
" Highlight Options: {{{

" Forground Color Settings: {{{

exe 'let s:fg_blue            = " ' s:ui .'fg=' .s:blue            .'"'
exe 'let s:fg_cornsilk        = " ' s:ui .'fg=' .s:cornsilk        .'"'
exe 'let s:fg_cyan            = " ' s:ui .'fg=' .s:cyan            .'"'
exe 'let s:fg_darkgoldenrod   = " ' s:ui .'fg=' .s:darkgoldenrod   .'"'
exe 'let s:fg_green           = " ' s:ui .'fg=' .s:green           .'"'
exe 'let s:fg_grey15          = " ' s:ui .'fg=' .s:grey15          .'"'
exe 'let s:fg_grey30          = " ' s:ui .'fg=' .s:grey30          .'"'
exe 'let s:fg_grey54          = " ' s:ui .'fg=' .s:grey54          .'"'
exe 'let s:fg_grey85          = " ' s:ui .'fg=' .s:grey85          .'"'
exe 'let s:fg_indianred       = " ' s:ui .'fg=' .s:indianred       .'"'
exe 'let s:fg_lightgoldenrod1 = " ' s:ui .'fg=' .s:lightgoldenrod1 .'"'
exe 'let s:fg_lightgoldenrod2 = " ' s:ui .'fg=' .s:lightgoldenrod2 .'"'
exe 'let s:fg_mediumturquoise = " ' s:ui .'fg=' .s:mediumturquoise .'"'
exe 'let s:fg_none            = " ' s:ui .'fg=' .s:none            .'"'
exe 'let s:fg_palegreen       = " ' s:ui .'fg=' .s:palegreen       .'"'
exe 'let s:fg_red             = " ' s:ui .'fg=' .s:red             .'"'
exe 'let s:fg_skyblue         = " ' s:ui .'fg=' .s:skyblue         .'"'
exe 'let s:fg_yellow1         = " ' s:ui .'fg=' .s:yellow1         .'"'
exe 'let s:fg_yellow2         = " ' s:ui .'fg=' .s:yellow2         .'"'

" }}}

" Background Color Settings: {{{

exe 'let s:bg_darkgoldenrod   = " ' s:ui .'bg=' .s:darkgoldenrod   .'"'
exe 'let s:bg_darkblue        = " ' s:ui .'bg=' .s:darkblue        .'"'
exe 'let s:bg_darkgreen       = " ' s:ui .'bg=' .s:darkgreen       .'"'
exe 'let s:bg_darkred         = " ' s:ui .'bg=' .s:darkred         .'"'
exe 'let s:bg_deepskyblue     = " ' s:ui .'bg=' .s:deepskyblue     .'"'
exe 'let s:bg_grey11          = " ' s:ui .'bg=' .s:grey11          .'"'
exe 'let s:bg_grey15          = " ' s:ui .'bg=' .s:grey15          .'"'
exe 'let s:bg_grey27          = " ' s:ui .'bg=' .s:grey27          .'"'
exe 'let s:bg_grey30          = " ' s:ui .'bg=' .s:grey30          .'"'
exe 'let s:bg_grey37          = " ' s:ui .'bg=' .s:grey37          .'"'
exe 'let s:bg_grey54          = " ' s:ui .'bg=' .s:grey54          .'"'
exe 'let s:bg_grey85          = " ' s:ui .'bg=' .s:grey85          .'"'
exe 'let s:bg_lightgoldenrod1 = " ' s:ui .'bg=' .s:lightgoldenrod1 .'"'
exe 'let s:bg_lightsteelblue  = " ' s:ui .'bg=' .s:lightsteelblue  .'"'
exe 'let s:bg_magenta         = " ' s:ui .'bg=' .s:magenta         .'"'
exe 'let s:bg_navyblue        = " ' s:ui .'bg=' .s:navyblue        .'"'
exe 'let s:bg_none            = " ' s:ui .'bg=' .s:none            .'"'
exe 'let s:bg_orange          = " ' s:ui .'bg=' .s:orange          .'"'

" }}}

" Attribute Settings: {{{

exe 'let s:attr_bold = " ' s:ui .'=BOLD'      .' term=BOLD'      .'"'
exe 'let s:attr_none = " ' s:ui .'=NONE'      .' term=NONE'      .'"'
exe 'let s:attr_undl = " ' s:ui .'=UNDERLINE' .' term=UNDERLINE' .'"'

" }}}

" }}}

"-------------------------------------------------------------------------------
" Highlight Settings: {{{

" Vim Highlighting: {{{

exe 'hi! TablineSel'   .s:fg_grey85          .s:bg_grey15          .s:attr_none
exe 'hi! Tabline'      .s:fg_grey54          .s:bg_grey11          .s:attr_none
exe 'hi! TablineFill'  .s:fg_grey85          .s:bg_grey11          .s:attr_none

exe 'hi! Pmenu'        .s:fg_grey85          .s:bg_grey30          .s:attr_none
exe 'hi! PmenuSel'     .s:fg_yellow2         .s:bg_deepskyblue     .s:attr_none
exe 'hi! PmenuSbar'    .s:fg_none            .s:bg_grey85          .s:attr_none
exe 'hi! PmenuThumb'   .s:fg_none            .s:bg_grey54          .s:attr_none
exe 'hi! WildMenu'     .s:fg_grey15          .s:bg_lightsteelblue  .s:attr_none

exe 'hi! Cursor'       .s:fg_grey15          .s:bg_lightgoldenrod1 .s:attr_none
exe 'hi! MatchParen'   .s:fg_grey15          .s:bg_grey54          .s:attr_none
exe 'hi! CursorLine'   .s:fg_none            .s:bg_grey30          .s:attr_none
exe 'hi! CursorIM'     .s:fg_none            .s:bg_magenta         .s:attr_none
exe 'hi! LineNr'       .s:fg_grey54          .s:bg_grey11          .s:attr_none
exe 'hi! CursorLineNr' .s:fg_lightgoldenrod1 .s:bg_grey11          .s:attr_none
exe 'hi! ColorColumn'  .s:fg_none            .s:bg_grey27          .s:attr_none
exe 'hi! SignColumn'   .s:fg_none            .s:bg_grey11          .s:attr_none
exe 'hi! Folded'       .s:fg_mediumturquoise .s:bg_grey30          .s:attr_none
exe 'hi! FoldColumn'   .s:fg_mediumturquoise .s:bg_grey30          .s:attr_none
exe 'hi! Visual'       .s:fg_none            .s:bg_grey30          .s:attr_none
exe 'hi! IncSearch'    .s:fg_grey15          .s:bg_orange          .s:attr_none
exe 'hi! Search'       .s:fg_grey15          .s:bg_darkgoldenrod   .s:attr_none
exe 'hi! SpellCap'     .s:fg_blue            .s:bg_darkblue        .s:attr_undl
exe 'hi! SpellLocal'   .s:fg_green           .s:bg_darkgreen       .s:attr_undl
exe 'hi! SpellBad'     .s:fg_red             .s:bg_darkred         .s:attr_undl
exe 'hi! SpellRare'    .s:fg_grey85          .s:bg_grey37          .s:attr_undl
exe 'hi! VertSplit'    .s:fg_none            .s:bg_grey11          .s:attr_none

exe 'hi! DiffAdd'      .s:fg_none            .s:bg_darkgreen       .s:attr_none
exe 'hi! DiffDelete'   .s:fg_none            .s:bg_darkred         .s:attr_none
exe 'hi! DiffChange'   .s:fg_none            .s:bg_grey37          .s:attr_none
exe 'hi! DiffText'     .s:fg_none            .s:bg_navyblue        .s:attr_none

exe 'hi! StatusLine'   .s:fg_none            .s:bg_grey11          .s:attr_none
exe 'hi! StatusLineNC' .s:fg_grey54          .s:bg_grey11          .s:attr_none

exe 'hi! ErrorMsg'     .s:fg_red             .s:bg_none            .s:attr_none
exe 'hi! WarningMsg'   .s:fg_yellow1         .s:bg_none            .s:attr_none
exe 'hi! ModeMsg'      .s:fg_cyan            .s:bg_none            .s:attr_none
exe 'hi! MoreMsg'      .s:fg_cyan            .s:bg_none            .s:attr_none
exe 'hi! Question'     .s:fg_blue            .s:bg_none            .s:attr_none

exe 'hi! Directory'    .s:fg_mediumturquoise .s:bg_none            .s:attr_none
exe 'hi! NonText'      .s:fg_lightgoldenrod2 .s:bg_none            .s:attr_bold
exe 'hi! SpecialKey'   .s:fg_grey30          .s:bg_none            .s:attr_bold
exe 'hi! Title'        .s:fg_cornsilk        .s:bg_none            .s:attr_bold

" }}}

" Generic Syntax Highlighting: {{{

exe 'hi! Normal'       .s:fg_grey85          .s:bg_grey15          .s:attr_none
exe 'hi! Comment'      .s:fg_grey54          .s:bg_none            .s:attr_none
exe 'hi! Constant'     .s:fg_palegreen       .s:bg_none            .s:attr_none
exe 'hi! Error'        .s:fg_red             .s:bg_none            .s:attr_bold
exe 'hi! Identifier'   .s:fg_skyblue         .s:bg_none            .s:attr_none
exe 'hi! Ignore'       .s:fg_none            .s:bg_none            .s:attr_none
exe 'hi! PreProc'      .s:fg_mediumturquoise .s:bg_none            .s:attr_none
exe 'hi! Special'      .s:fg_darkgoldenrod   .s:bg_none            .s:attr_none
exe 'hi! Statement'    .s:fg_lightgoldenrod2 .s:bg_none            .s:attr_none
exe 'hi! Todo'         .s:fg_indianred       .s:bg_none            .s:attr_bold
exe 'hi! Type'         .s:fg_indianred       .s:bg_none            .s:attr_none
exe 'hi! Underlined'   .s:fg_mediumturquoise .s:bg_none            .s:attr_undl

" }}}

" }}}
