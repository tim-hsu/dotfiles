function fvim
    switch $argv
        case "*/"
            echo $argv
            set files (fd . $argv --type f --hidden --follow --exclude .git)
        case "*"
            echo $argv
            set files (fd   $argv --type f --hidden --follow --exclude .git)
    end
    set choice (string split ' ' $files | fzf -0 -1 --preview 'head -100 {}')
    [ $choice ] && nvim $choice
end
