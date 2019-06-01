#!/bin/sh
# ここに改行を入れることもダメ(コメントがあればいける)
# Linux環境のため改行コードをLFに設定する必要あり
# switch分岐
var="red"
case "$var" in
  "blue" ) echo "bule" ;;
  "green" ) echo "green" ;;
  "red" ) echo "red" ;;
esac

# whileループ(-ltは「<」のこと)
int=0
while [ $int -lt 5 ]; do
  echo $int
  int=`expr $int \+ 1`
done

# untilループ(-gtは「>」のこと)
until [ ! \( $int -gt 0 \) ]; do
  echo $int
  int=`expr $int \- 1`
done

# forループ
for var in 10 11 12 ; do
  echo $var
done

# 関数
MyFunction () {
  echo "関数実行"
}
# 実行
MyFunction

# 関数(引数あり)
add () {
  echo `expr $1 \+ $2`
}
# 実行
add 1 3
