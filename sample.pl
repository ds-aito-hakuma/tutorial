#!/usr/local/bin/perl
# print "Hello world!\n";
# $xx = 5;
# $xx = "abc";
# print "$xx\n";
# $xx = 5;
# $yy = 2;
# $zz = $xx + $yy;
# print "答えは$zzです。\n";
# # comment
# @hairetu = ( "aa", "bb" );
# $hairetu[2] = 'cc';
# @hairetu[3..4] = ( "dd", "ee" );
# print @hairetu;
# print "\n";
# print $hairetu[0];
# print "\n";
# print @hairetu[0..2];
# print "\n";

# # 配列の基礎
# # 配列の宣言
# my @numbers;
# # 配列の初期化
# @numbers = ( 10, 25, 40, 4, -6 );
# my @newNumbers = ( 1, 1, 1 );
# print @numbers;
# print "\n";
# print @newNumbers;

# 8月6日（金）（gitの学習でブランチをいじっていたら何故か今日の学習データが消えました、、涙）
# @hairetu = ( 'a', 'b', 'c', 'd' );
# print "\@hairetu：@hairetu\n";
# # 配列の操作
# $x = shift(@hairetu); 
# print "配列の頭を取った結果 \$x：$x\n";
# print "\@hairetu：@hairetu\n";
# $x = pop(@hairetu);
# print "配列の尾を取った結果 \$x：$x\n";
# print "\@hairetu：@hairetu\n";
# push(@hairetu, $x);
# print "push関数を使用した結果\n\@hairetu：@hairetu\n";
# @tuika = ( 'e', 'f', 'g' );
# print "\@hairetuに\@tuikaを連結させます！\n";
# print "@tuika\n";
# # @add = push(@hairetu, @tuika); このような使い方はしない？
# # print "\@add：@add\n"; 6と表示される。
# print "\@hairetu：@hairetu\n";
# splice(@tuika, 1, 2);
# print "\@tuika：@tuika\n";
# print "\@hairetu：@hairetu\n";
# @hairetu = reverse(@hairetu);
# print "\@hairetu：@hairetu\n";
# $str = "hogehogehoge";
# @hoge = split(/e/, $str); # eで分割して配列に格納する。
# print "\@hoge：@hoge\n"; # eは取り除かれる。

# # 連想配列
# $rensou{"last"} = "Hakuma";
# $rensou{"first"} = "Aito";
# %zentai = ('tanaka', 'man', 'suzuki', 'female'); # 連想配列は％が接頭辞となる
# %hash = ( 'key' => 'value' );
# print $hash{'key'} . "\n";
# print $rensou{"last"} . " " . $rensou{"first"} . "\n";
# print $zentai{"tanaka"} . "\n";
# print $zentai{"suzuki"} . "\n";
# while (($name, $value) = each(%rensou)) { # 連想配列の中身を出力する方法？ -> ループ文の学習後復習
#     print "$name = $value\n";
# }

# # 変数名に使える文字
# # ハイフンは使用できない。
# # 変数名は数値から始まってはいけない

# # 省略時の変数（$_）
# $_ = "magic!";
# print . "\n";
# $bigaku = "\$_以外の変数名でも省略される？";
# print ;

# 8月10日(火)
use strict; # 厳しいプログラムのチェック
use warnings; # 詳しい警告を出力
# # 環境変数　環境変数の値の読み書きが出来る
# #print "このPCのPATHは\n$ENV{'PATH'}\n";
# print "このPCのPATHは\n";
# my @path = split(/:/, $ENV{'PATH'});
# foreach my $i (@path) {
#     print "$i\n";
# }
# print "です。\n";

# # コンテキストの判断
# my $x = 123;
# my $y = 456;
# print $x + $y; # ＋は両辺を数値コンテキストで評価する
# print "\n";
# print "a" + "b"; # 数値コンテキストで評価するが、"a"と"b"は文字列であるため0であると認識されてしまう
# print "\n";
# print $x . $y; # .は両辺を文字列コンテキストで評価する
# print "\n";

# # 文字列処理関数
# # 文字列関数 substr
# my $sub = substr("hello world!", 0,2); # 指定した位置から指定したバイト数の文字列を抽出する
# print "$sub\n";
# # 文字列関数 index
# my $alph = "abcdefghijklmnopqrstuvwxyz";
# my $ind = index($alph, "i");
# print "\$alpaの中にiは$ind番目にあります。\n";

# # 条件分岐
# my ($sec, $min, $hour) = localtime(); # 現在時刻をスカラー変数に代入
# my ($dakoku_min, $dakoku_hour) = (50, 9);
# my ($taikin_min, $taikin_hour) = ($dakoku_min, $dakoku_hour + 9);
# if ( $hour >= $taikin_hour or ( $hour == $taikin_hour and $min >= $taikin_min ) ) {
#     print "お疲れ様です。\nただいま$hour時$min分$sec秒です。\n退勤打刻は済んでいますか？\n";
# } elsif ( $hour >= $dakoku_hour + 4 or ( $hour == $dakoku_hour + 4 and $min >= $dakoku_min ) ){
#     print "お疲れ様です。\nただいま$hour時$min分$sec秒です。\n一時間のお昼休憩は済んでいますか？\n";
# } else {
#     print "お疲れ様です。\nただいま$hour時$min分$sec秒です。\n今日も一日頑張りましょう！\n";
# }

# unless ( $hour == 12 ) {
#     print "ただいまお昼ではありません。\n";
# }

# # if修飾子
# $hour = "0$hour" if ($hour < 10);
# $min = "0$min" if ($min < 10);
# $sec = "0$sec" if ($sec < 10);
# print "ただいま$hour時$min分$sec秒です。\n";

# # 文字列の比較
# $a = "abc";
# $b = "abc";
# if ( $a eq $b ) {
#     print "\$aと\$bは同じ文字列($a)です\n";
# }

# 8月11日(水)
# 配列
my @score = ( 60, 55, 82 );
my $sum;
foreach my $item (@score) {
    $sum += $item;
}
print $sum , "\n";
foreach (@score) {
    $sum -= $_;
}
print $sum , "\n";