" Vim syntax file
" Language:	Minimal
" Maintainer:	Mark Hughes <kamikaze@kuoi.asui.uidaho.edu>
" URL:		http://kuoi.asui.uidaho.edu/~kamikaze/minimal/minimal.vim
" Last Change:  2001Nov19
" History:
" 2002Jan05
"       Removed \
" 2001Nov19
"       Hephaestus library
" 2001Nov10
"       stdlib uses match instead of keyword, so it can check type
" 2001Nov06
"       functions & arrays
"       Standard library
" 2001Oct15
"       Created, vars & constants

syn clear
syn case match

syn cluster minValue contains=minNumber,minString,minVar,minArrayName,minArrayDecl,minLibrary,minFuncName,minFuncDecl,minInlineComment,minLineComment

" syntax elements
syn match minComma contained ','
syn match minEditCommand '^\s*;.*'
syn match minLineComment '#.*'
syn match minInlineComment contained '#[^#]*#'

" constants
syn match minNumber contained '-\=\d\+\(\.\d\+\)\=\(e[-+]\=\d\+\)\=\>'
syn match minNumber contained '-\=\.\d\+\(e[-+]\=\d\+\)\=\>'
syn region minString contained start='"' skip='\\"' end='"'

" variables
syn match minVar contained '\h\w*\$\=[^[(_a-zA-Z0-9]'me=e-1
syn match minArrayName contained '\h\w*\$\=\['me=e-1 nextgroup=minArrayDecl
syn region minArrayDecl contained matchgroup=minArray start='\[' end='\]' contains=@minValue

" functions
syn match minFuncName '\h\w*\$\=('me=e-1 nextgroup=minFuncDecl
syn region minFuncDecl matchgroup=minFunc start='(' end=')' contains=@minValue,minComma

" Standard library
syn match minLibrary 'abs('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'add('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'addv('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'and('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'asc('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'assert('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'atn('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'band('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bnot('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bor('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bshl('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bshr('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bxor('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bin$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'boolean('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bye('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'chr$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'clear('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cos('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'data('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'date$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'decr('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'def('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'deg('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'del('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'div('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'divv('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'do('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'e('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'end('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'env$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'eof('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'eq('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'exp('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'for('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'foreach('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'frac('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ge('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'global('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gt('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'hex$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'hypot('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'if('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'if$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'incr('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'input('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'input$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'instr('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'int('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'join$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'joinv$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'le('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'left$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'len('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'let('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'library('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'list('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'log('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'lt('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'mid$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'mod('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'modv('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'mul('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'mulv('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ne('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'neg('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'new('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'not('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'oct$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'or('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'p('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pi('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pn('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pow('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'print('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'printn('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'randomize('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'read('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'read$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'repeat('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'restore('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'return('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'right$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'rnd('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'setglobal('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'setvar('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'sgn('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'sin('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'size('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'sqrt('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'str$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'string$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'sub('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'subv('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'tan('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'time$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'timer('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'tron('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'type('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'val('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'var('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'var$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'while('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'word$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'wordcount('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'xor('me=e-1 nextgroup=minFuncDecl

" Hephaestus library
syn match minLibrary 'alert('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'bl_new('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_brain('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_defeat('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_faction('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_get_brain$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_get_faction('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_new('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_selfdefense('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'cr_think('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'd('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_attack('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_checkalive('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_do_attack('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_do_magic('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_do_move('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_do_trigger('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_exp('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_get_exp('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_get_target$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_has_magic('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_magattack('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_magic('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_secondary('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'en_turn('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gameover('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gcls('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gcolor('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gcurx('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gcury('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gfilloval('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gfillrect('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gfont('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gimage('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gline('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gmove('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'goval('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gplot('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gr_get_size('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gr_get_terrain$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gr_get_thing$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gr_terrain('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'grect('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gtext('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gtext_height('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'gtext_width('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'inputdlg$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'it_dropfunc('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'it_equip('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'it_equipfunc('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'it_new('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'it_removefunc('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'it_takefunc('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'map_bounds('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'map_fill('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'map_get_xsize('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'map_get_ysize('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'map_new('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'menu('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'output('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'output_color('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'outputicon('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pause('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_drop('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_equip('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_get_equip$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_get_item$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_get_item_count('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_get_level('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_remove('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'pl_take('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'playsound('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'redraw('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'resume('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_exists('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_get_name$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_get_prop$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_get_prop('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_name('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_prop('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'st_trigger('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'stats_lock('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'tempid$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_frame('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_get_tile$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_get_walls$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_new('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_opa('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_tile('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'ter_walls('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_blocking('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_facing('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_frame('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_facing('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_gold('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_mapid$('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_pose('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_stat('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_statmax('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_sx('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_sy('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_x('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_get_y('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_gold('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_moveto('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_opa('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_pose('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_remove('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_stat('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_statboth('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_statmax('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_task('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'th_tile('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'wait('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'window_color('me=e-1 nextgroup=minFuncDecl
syn match minLibrary 'window_image('me=e-1 nextgroup=minFuncDecl

" match non-contained parens
syn match minError '[()]'

"_______________________________________________________________________________
hi minLibrary           term=bold cterm=bold ctermfg=DarkGray gui=bold guifg=Black
hi link minFuncName     Normal
hi link minFunc         Normal
"hi link minFuncDecl     Error

hi link minArrayName    Identifier
hi link minArray        Identifier
"hi link minArrayDecl    Error

hi link minVar          Identifier
hi link minString       String
hi link minNumber       Number

hi link minLineComment  Comment
hi link minInlineComment Comment

hi link minComma        Normal

hi minSyntax            term=underline cterm=underline ctermfg=Blue gui=underline guifg=Blue
hi link minEditCommand  minSyntax

hi link minError        Error

if !exists("min_minlines")
  let min_minlines=50
endif
exec "syn sync minlines=" . min_minlines

"_______________________________________________________________________________
let b:current_syntax="minimal"
let b:spell_options="contained"

" /* vim:set tw=0 ai: */
