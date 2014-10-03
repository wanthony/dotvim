SETUP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTVIM_SRC="$SETUP_DIR"
DOTVIM_DST="$HOME/.vim"
DOTVIMRC_SRC="$SETUP_DIR/vimrc"
DOTVIMRC_DST="$HOME/.vimrc"
DOTVIMRC_PLUGINS_SRC="$SETUP_DIR/vimrc.plugins"
DOTVIMRC_PLUGINS_DST="$HOME/.vimrc.plugins"

if [ -d $DOTVIM_DST ]
then
  echo "$DOTVIM_DST already exists!"
  exit 1
fi

if [ -e $DOTVIMRC_DST ]
then
  echo "$DOTVIMRC_DST already exists!"
  exit 1
fi

if [ -e $DOTVIMRC_PLUGINS_DST ]
then
  echo "$DOTVIMRC_PLUGINS_DST already exists!"
  exit 1
fi

echo "Linking $DOTVIM_SRC -> $DOTVIM_DST"
ln -s $DOTVIM_SRC $DOTVIM_DST

echo "Linking $DOTVIMRC_SRC -> $DOTVIMRC_DST"
ln -s $DOTVIMRC_SRC $DOTVIMRC_DST

echo "Linking $DOTVIMRC_PLUGINS_SRC -> $DOTVIMRC_PLUGINS_DST"
ln -s $DOTVIMRC_PLUGINS_SRC $DOTVIMRC_PLUGINS_DST

echo "All done!  Enjoy my dotfiles!"

