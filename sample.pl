#!/usr/local/bin/perl
print "Hello world!\n";
$xx = 5;
$xx = "abc";
print "$xx\n";
$xx = 5;
$yy = 2;
$zz = $xx + $yy;
print "答えは$zzです。\n";
# comment
@hairetu = ( "aa", "bb" );
$hairetu[2] = 'cc';
@hairetu[3..4] = ( "dd", "ee" );
print @hairetu;
print "\n";
print $hairetu[0];
print "\n";
print @hairetu[0..2];
print "\n";

# 配列の基礎
# 配列の宣言
my @numbers;
# 配列の初期化
@numbers = ( 10, 25, 40, 4, -6 );
my @newNumbers = ( 1, 1, 1 );
print @numbers;
print "\n";
print @newNumbers;
