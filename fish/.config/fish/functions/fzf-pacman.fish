function fzf-pacman
    set choice (echo -e "Install\nUninstall\nQuery" | fzf)

    switch $choice
    case Install
        pacman -Slq | fzf -m --preview 'pacman -Si {}' --preview-window=70% | xargs -ro sudo pacman -S
    case Uninstall
        pacman -Qq  | fzf -m --preview 'pacman -Qi {}' --preview-window=70% | xargs -ro sudo pacman -Rns
    case Query
        pacman -Qq  | fzf -m --preview 'pacman -Qi {}' --preview-window=70% | xargs -r echo
    end
end
