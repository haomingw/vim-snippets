if exists("b:done_vimsnippets")
    finish
endif
let b:done_vimsnippets = 1

" Some variables need default value
if !exists("g:snips_author")
    let g:snips_author = "yourname"
endif

if !exists("g:snips_email")
    let g:snips_email = "yourname@email.com"
endif

if !exists("g:snips_github")
    let g:snips_github = "https://github.com/yourname"
endif

" Expanding the path is not needed on Vim 7.4
if &cp || version >= 704
    finish
endif

"" Add pythonx to the python search path if needed (i.e. <= Vim 7.3).
if !has("python") && !has("python3")
    finish
end

" This will fail if UltiSnips is not installed.
try
    call UltiSnips#bootstrap#Bootstrap()
catch /E117/
    finish
endtry


"" This should have been set by UltiSnips, otherwise something is wrong.
if !exists("g:_uspy")
    finish
end
