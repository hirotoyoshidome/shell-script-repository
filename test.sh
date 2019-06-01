#!/bin/sh
# 出力
echo "出力"
# 入力を求める
read a
# 入力値を出力
echo ${a}
# 計算を行う(演算子はエスケープすること)(スペース必須)
expr 2 \+ 2
expr 2 \- 2
expr 2 \* 2
expr 2 \/ 2
# 変数に格納する(スペース禁止)
a=1
b=2
# 結果を変数に格納する際にはバッククォートで囲む(スペース必須)
r=`expr $a \+ $b`
# 変数の値を出力
echo $r
echo "数字を入力してください"
read int

res=`expr $int \% 2`
echo $res
zero=0
# 数値の同値判定は-eqを使用する(前後にスペースが必須)
if [ $res -eq $zero ]; then
  echo "偶数です"
else
  echo "奇数です"
fi
# 同値判定は=演算子を使用する(文字列)
if [ "ABC" = "ABC" ]; then
  echo "equal"
else
  echo "not equal"
fi
