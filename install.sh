DOT_FILES=$HOME/.dotfiles
rm -rf $DOT_FILES
git clone --bare git@github.com:marcenacp/dotfiles.git $DOT_FILES
function config {
   /usr/bin/git --git-dir=$DOT_FILES/ --work-tree=$HOME $@
}

# Checkout all dotfiles
cd $DOT_FILES
config checkout main -- ../.vimrc
config checkout main -- ../.gitconfig

config config status.showUntrackedFiles no
