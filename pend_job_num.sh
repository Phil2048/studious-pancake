bjobs -p -u all | tail -n +3 | awk'{a [$ 3] + = 1} END {for（k in a）print a [k]，k}'| sort -nr
//查询每个用户的pend作业数量，从高到低排序
