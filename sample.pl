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
@hairetu = ( 'a', 'b', 'c', 'd' );
print "\@hairetu：@hairetu\n";
# 配列の操作
$x = shift(@hairetu); 
print "配列の頭を取った結果 \$x：$x\n";
print "\@hairetu：@hairetu\n";
$x = pop(@hairetu);
print "配列の尾を取った結果 \$x：$x\n";
print "\@hairetu：@hairetu\n";
push(@hairetu, $x);
print "push関数を使用した結果\n\@hairetu：@hairetu\n";
@tuika = ( 'e', 'f', 'g' );
print "\@hairetuに\@tuikaを連結させます！\n";
print "@tuika\n";
# @add = push(@hairetu, @tuika); このような使い方はしない？
# print "\@add：@add\n"; 6と表示される。
print "\@hairetu：@hairetu\n";
splice(@tuika, 1, 2);
print "\@tuika：@tuika\n";
print "\@hairetu：@hairetu\n";
@hairetu = reverse(@hairetu);
print "\@hairetu：@hairetu\n";
$str = "hogehogehoge";
@hoge = split(/e/, $str); # eで分割して配列に格納する。
print "\@hoge：@hoge\n"; # eは取り除かれる。

# 連想配列
$rensou{"last"} = "Hakuma";
$rensou{"first"} = "Aito";
%zentai = ('tanaka', 'man', 'suzuki', 'female'); # 連想配列は％が接頭辞となる
%hash = ( 'key' => 'value' );
print $hash{'key'} . "\n";
print $rensou{"last"} . " " . $rensou{"first"} . "\n";
print $zentai{"tanaka"} . "\n";
print $zentai{"suzuki"} . "\n";
while (($name, $value) = each(%rensou)) { # 連想配列の中身を出力する方法？ -> ループ文の学習後復習
    print "$name = $value\n";
}

# 変数名に使える文字
# ハイフンは使用できない。
# 変数名は数値から始まってはいけない

# 省略時の変数（$_）
$_ = "magic!";
print . "\n";
$bigaku = "\$_以外の変数名でも省略される？";
print ;