for f in $(ls -A | egrep -v "README.md|.git|check.sh|update.sh") ; do
  diff -u $HOME/$f $f | grep -v "^Only in"
done 
