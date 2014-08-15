let s:save_cpo = &cpo
set cpo&vim

if !exists("g:godoc_command")
  let g:godoc_command = "Godoc"
endif

let s:source = {
      \ 'name': 'go/doc',
      \ 'description': 'go packages to doc',
      \ }

function! unite#sources#go_doc#define()
  return s:source
endfunction

function! s:source.gather_candidates(args, context)
    let pkgs = goimps#Importable()
    return map(copy(pkgs), '{
          \ "word": v:val,
          \ "kind": "command",
          \ "action__command": g:godoc_command . " " . v:val,
          \ }')
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
