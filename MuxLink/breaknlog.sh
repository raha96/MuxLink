logpath="$1_K$2.log"
echo "Began @ $(TZ=UTC-3:30 date -R)" > $logpath
./break.sh $1 $2 | tee $logpath.tmp
cat $logpath.tmp >> $logpath
rm $logpath.tmp
echo "" >> $logpath
echo "Finished @ $(TZ=UTC-3:30 date -R)" >> $logpath
