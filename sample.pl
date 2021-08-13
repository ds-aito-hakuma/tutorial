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
# my @score = ( 60, 55, 82 );
# my $sum;
# foreach my $item (@score) {
#     $sum += $item;
# }
# print $sum , "\n";
# foreach (@score) {
#     $sum -= $_;
# }
# print $sum , "\n";

# 8月12日（木）
# 配列とリストに関する関数
# my @score = (40, 11, 80);

# # join('区切り文字', 配列やリスト)
# print "今回の得点は、" . join("点と", @score) . "点です。\n";

# # split(/パターン/, 文字列)
# my @score_2 = split(/,/, '94,70,85');
# print "@score_2\n";

# # 空白をパターンとして使用する際には
# # split(' ', 文字列); で空白区切りを実行できる
# my @data = split(' ', '  green     red        yellow  ');
# print "@data\n";

# # push(配列, 連結させる文字列);
# push(@score, @data);
# print "@score\n";

# # pop(配列);
# # 配列の最後の要素を取り出す
# my $color = pop(@score);
# print "$color\n";

# # shift(配列);
# # 配列の先頭の要素を取り出す
# my $score = shift(@score);
# print "$score点です。\n";

# # unshift(配列, 要素);
# # 配列の先頭に要素を追加する
# unshift(@score, '100');
# print "@score\n";

# # spliceの使い方
# print "spliceの使い方\n";
# print "\n";
#     # その１
#     # splice(対象配列の, ここから, これだけの長さを削除し, そこにこのリストを挿入);
#     print "その１\n";
#     my @array = ('a', 'b', 'c', 'd', 'e');
#     print "\@array：@array\n";
#     my @xyz = ('x', 'y', 'z');
#     my @removed = splice(@array, 1, 4, @xyz);
#     print "\@array：@array\n";
#     print "\@removed：@removed\n";
#     print "\n";

#     # その２
#     # splice(対象配列の, ここから, これだけの長さを削除);
#     print "その２\n";
#     @array = ('a', 'b', 'c', 'd', 'e');
#     print "\@array：@array\n";
#     @removed = splice(@array, 1, 3);
#     print "\@array：@array\n";
#     print "\@removed：@removed\n";
#     print "\n";

#     # その３
#     # splice(対象配列の, ここから最後まで削除);
#     print "その３\n";
#     @array = ('a', 'b', 'c', 'd', 'e');
#     print "\@array：@array\n";
#     @removed = splice(@array, 2);
#     print "\@array：@array\n";
#     print "\@removed：@removed\n";
#     print "\n";

#     # その４
#     # splice(対象配列を最初から最後まで削除する);
#     print "その４\n";
#     @array = ('a', 'b', 'c', 'd', 'e');
#     print "\@array：@array\n";
#     @removed = splice(@array);
#     print "\@array：@array\n";
#     print "\@removed：@removed\n";
#     print "\n";

# # 繰り返し処理
# # foreach my 変数 (リスト) {
# #     処理 ...
# # }
# foreach (@removed) {
#     print; # 省略
#     print "\n";
# }
# print "\n";
# あ　　
# # ファイルの各行を表示するプログラム
# print "【ファイルの各行を表示するプログラム】\n";
# open(FILE, 'sample.txt') or die "$!";
# foreach(<FILE>) {
#     print;
# }
# print "\n\n";

# # ディレクトリの各ファイルの繰り返し
# print "【ディレクトリの各ファイルの繰り返し】\n";
# opendir(DIR, '.') or die "$!";
# foreach (readdir(DIR)) {
#     print;
#     print "\n";
# }
# print "\n";

# # whileを使った繰り返し
# # while(条件式) {
# #     処理 ...
# # }
# print "【ファイルの各行を表示するプログラム】\n";
# open(FILE, 'sample.txt') or die "$!";
# while(<FILE>) {
#     print;
# }
# close(FILE);
# print "\n\n";

# 8月13日（金）
# last：ループ文を中断させる
print "【last：ループ文の中断】\n";
open(FILE, 'sample.txt') or die "$!";
while(<FILE>) {
    chomp; # 最後の改行を取り除く
    if($_ eq 'END') {
        last;
    }
    print;
    print "\n";
}
close(FILE);
print "\n";

# for文
print "【for文について】\n";
my $for =  << "EOD";
for(初期化; 条件式; 次の一歩;) {
    処理 ...
}
EOD
print $for;
for(my $i = 0; $i < 10; $i++) {
    print $i , ",";
}
print "\n\n";

# 【0..9】
print "【0..9】\n";
foreach(1..12) {
    print "$_月 ";
}
print "\n\n";

#【do ... until】
print "【do ... until】\n";
my $do = 0;
do {
    print $do , ",";
    $do++;
} until ($do == 5);
print "\n\n";

# 文字列の繰り返し
print "【文字列の繰り返し】\n";
print "文字列 x 繰り返し回数\n";
my $str = "Programming Lesson!";
print "-" x length($str) , "\n";
print $str , "\n";
print "-" x length($str) , "\n";
print "\n";

# grepによる繰り返し
print "【grepによる繰り返し】\n";
print "grep(/パターン/, リスト)\n";
my @week = ('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
my @found = grep(/^S/, @week);
print "@found\n";
print "\n";

# mapによる繰り返し
print "【mapによる繰り返し】\n";
print "map { 各要素を構成する式 } リスト\n";
my @user = ('aito-hakuma', 'taisei-seno', 'hiroki-takeno');
my @mail = map { $_ . '@dimage.co.jp' } @user;
print join("\n", @mail);
print "\n\n";