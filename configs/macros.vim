"macros for system clipboard access
let @c = '"+y'
let @v = '"+p'

"puts line number on every line in buffer
let @l = ':%normal I1. gg0G:I:%s/^\(\d\+\)\s*\./\1./gg0'

"numbers all lines in visual block selection
let @v = '0o0I1. gv:I:%s/^\(\d\+\)\s*\./\1./gvo'
