-- init.lua
vim.cmd([[autocmd FileType tex nnoremap <buffer> <leader>ll :VimtexCompile<CR>]])

-- Configure vimtex
vim.g.vimtex_compiler_latexmk = {
    build_dir = 'build',
    continuous = 1,
}

-- Enable vimtex for LaTeX files
vim.cmd [[
    autocmd FileType tex setlocal ft=vimtex
]]

