# dotfiles
My personal dotfiles.

## External packages (dependencies)
The dotfiles are only a part of the configuration and the whole customized user experience. The following packages may need to be installed for the configuration to work well.

* In general:
    * Fonts: JetBrains Mono, Inconsolata, Iosevka
    * `fd`
    * `fzf` (shell extensions may not be enabled by default depending on the package manager)
    * `keychain`
    * `powerline-go`
    * `xdg-user-dir`
    * `miniconda`
    * `julia`
    * `zgen (if using zsh)`
* For `vim` or `neovim`:
    * The `vim-instant-markdown` plugin needs [additional installation steps](https://github.com/suan/vim-instant-markdown)
* For `ranger` preview:
    * `w3m`
    * `atool`
    * `highlight`
    * `pandoc` (haskell dependencies)
    * Check out the `scope.sh` file or `pacman -Si ranger` for more information
