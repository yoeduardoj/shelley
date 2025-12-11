#!/bin/zsh

brew update && brew install fastfetch minikube

cat > ~/.spaceshiprc.zsh << EOL
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_KUBECTL_SHOW=false
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_CHAR_SYMBOL="> "
EOL

git config --global alias.st "status -s"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.di diff
git config --global alias.lg "log --oneline --graph --decorate --all"
git config --global alias.cob "checkout -b"
git config --global alias.cm "commit -m"
git config --global alias.amend "commit --amend --no-edit"
git config --global alias.unstage "reset HEAD"
git config --global alias.undo "reset HEAD~1"
git config --global alias.hardreset "reset --hard"
git config --global alias.prune "remote prune origin"
git config --global alias.pushf "push --force-with-lease"

OH_CUSTOM_ZSH="$HOME/.oh-my-zsh/custom"

FASTFETCH_ZSH="$OH_CUSTOM_ZSH/zz-fastfetch.sh"

echo "fastfetch" > $FASTFETCH_ZSH && chmod -x $FASTFETCH_ZSH

cp shelley.sh "$OH_CUSTOM_ZSH/aa-shelley.sh"

cp vimrc ~/.vimrc
cp -R vim ~/.vim

