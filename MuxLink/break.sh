python Main.py --file-name $1_K$2_DMUX --train-name links_train.txt --test-name links_test.txt  --testneg-name link_test_n.txt --hop 3  --save-model > Log_train_$1_K$2_DMUX.txt
python Main.py --file-name $1_K$2_DMUX --train-name links_train.txt --test-name links_test.txt  --hop 3  --only-predict                              > Log_pos_predict_$1_K$2_DMUX.txt
python Main.py --file-name $1_K$2_DMUX --train-name links_train.txt --test-name link_test_n.txt --hop 3  --only-predict                              > Log_neg_predict_$1_K$2_DMUX.txt
perl break_DMUX.pl $1_K$2_DMUX 0.01 3
