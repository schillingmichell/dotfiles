# Installing
```bash
mkdir -p $HOME/git/github.com/michellschilling
git clone --bare <remote-git-repo-url> $HOME/git/github.com/michellschilling/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/git/github.com/michellschilling/dotfiles --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```
```
