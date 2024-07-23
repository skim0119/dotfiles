# Git mergetool setup
git config merge.tool vimdiff
git config merge.conflictstyle diff3
git config mergetool.prompt true

git config --global column.ui auto
git config --global branch.sort -committerdate

git config --global rerere.enabled true
