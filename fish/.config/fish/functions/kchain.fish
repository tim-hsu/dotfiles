function kchain
    set CURRENT_SHELL "$SHELL"
    export SHELL=fish
    eval (keychain --eval $argv)
    export SHELL="$CURRENT_SHELL"
end
