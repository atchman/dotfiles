# dotfiles

### Installing

```
$ mkdir $HOME/git/dotfiles
```

add line in bash_aliases or in ~/.zsh/aliases
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/git/dotfiles --work-tree=$HOME'
```

```
$ dotfiles config --local status.showUntrackedFiles no
$ dotfiles status
$ dotfiles checkout
```

### BackUp

```
$ mkdir -p $HOME/git/dotfiles
$ git clone github.com/atchman/dotfiles.git $HOME/git/dotfiles
```

### Commands Example

add  

```
$ dotfiles add .bashrc
$ dotfiles commit -m "add .bashrc"
$ dotfiles push
```

### System

| |Use|
|:-|:---:|
|OS|EndeavourOS|
|WM|i3|
|Compositor|Picom|
|Terminal|Alacritty|
|Shell|bash|
|Editor|nvim|
|Clipboard manager|xclip|
|program launcher|rofi|
|File Manager|Thunar|
|Media Player|mpv|
|Musik Player|Cantata|


### Source

[https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html)
[https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)

