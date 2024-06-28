-- init.lua
vim.cmd([[autocmd FileType tex nnoremap <buffer> <leader>ll :VimtexCompile<CR>]])
vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_method = 'sioyek'
vim.g.vimtex_synctex = 1
vim.g.tex_conceal = 'abdmg'
vim.g.vimtex_compile_latexmk = {
  executable = "latexmk",
  OPTIONS = {
    "-xelatex",
    "-fine-line-error",
    "-synctex=1",
    "-interactions=nonstopmode",
  },
}
