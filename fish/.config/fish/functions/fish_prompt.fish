function fish_prompt --description 'Write out the prompt'
    eval powerline-go \
    -modules "venv,host,ssh,cwd,perms,git,hg,jobs,exit" \
    -hostname-only-if-ssh \
    -error $status \
    -shell bare
end
