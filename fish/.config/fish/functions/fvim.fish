function fvim
    set choice (fd --type f --hidden --follow --exclude .git | fzf -0 -1 --preview 'head -100 {}')
    [ $choice ] && nvim $choice
end
