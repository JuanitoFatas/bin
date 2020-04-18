# Git and GitHub
ssh-keygen -t rsa -b 4096 -C "me@juanitofatas.com"

eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa

# Setup Git Stuff
git config --global user.name "Juanito Fatas"
git config --global user.email "me@juanitofatas.com"
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.lp local-push
git config --global color.ui true
git config --global url."git@github.com:".insteadOf "https://github.com/"
git config --global core.editor "subl -w"
git config --global core.excludesfile ~/.gitignore_global
git config --global diff.noprefix true
git config --global hub.protocol https
git config --global github.user juanitofatas

pbcopy < ~/.ssh/id_rsa.pub
open https://github.com/settings/keys
