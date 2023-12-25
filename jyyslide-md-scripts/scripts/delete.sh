rm -rf $MYSLIDE_HOME/docs/$1
rm -rf $MYSLIDE_HOME/pages/$1
rm -rf $JYYSLIDE_HOME/example/$1
grep -v "$1" $MYSLIDE_HOME/README.md | tee $MYSLIDE_HOME/README.md

echo "Delete DONE."
