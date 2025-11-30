#!/bin/bash -xv

ng () {
    echo "$1 行目が違うよ"
    res=1
}

res=0


out=$(seq 5 | ./plus)
[ "${out}" = 3.0 ] || ng "$LINENO"


out=$(echo あ 1 2 | ./plus)
[ "${out}" = 1.5 ] || ng "$LINENO"  


[ "${res}" = 0 ] && echo OK

exit $res

