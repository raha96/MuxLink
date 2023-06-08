logpath="$1_K$2.log"
perl break_DMUX.pl $1_K$2_DMUX 0.01 3 | tee $logpath.tmp
cat $logpath.tmp >> $logpath
rm $logpath.tmp
