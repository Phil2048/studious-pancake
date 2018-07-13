top  -b  -n 1 > /tmp/top.txt

tail -n +8 /tmp/top.txt \
|awk '{a[$1]=$9;b[$1]=$10;c[$1]=$NF;d[$1]=strftime("%S",$11)} \
END{for(k in a) \
if(a[k]>5&&b[k]>30&&d[k]>2) \
print a[k],b[k],d[k],c[k]}'|sort -r -k 3|head -30
