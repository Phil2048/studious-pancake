bjobs -q q_x86_share -u all|tail -n +3 |awk '{a[$3]+=1;b[$3]+=$13}END{for(k in a)print b[k],k}' |sort  -nr 
