#!/bin/sh
# utf-8変換 | 使用する単語のフィルター | カンマ区切り | ランダムソート
#改行なし
#DATA=`nkf -wLu noun.csv | egrep "中学|高校" | awk -F , '{print $1}' | gsort -R | head -10`
DATA=`nkf -wLu noun.csv | egrep "中学|高校" | awk -F , '{print $1}' | gsort -R | head -50`
str=
while read line
do
  str="${str}/${line}"
done <<EOF
${DATA}.html
EOF

echo $str;
# 改行あり
#nkf -wLu noun.csv | egrep "中学|高校" | awk -F , '{printf $1}' 
