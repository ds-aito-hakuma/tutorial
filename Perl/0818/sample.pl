# クラスの宣言
package Class;
# コンストラクタの作成
sub new {
  my $class = shift; # 第一引数としてクラス名を渡す
  my $self = {
    X => 10,
    Y => 100
  };
  return bless $self, $class; # bless関数でオブジェクトのリファレンスを返す
}

# メソッドの作成
sub modify_obj {
  my ($self, $x, $y) = @_; # 第一引数にオブジェクトへのリファレンスを渡す
  $self -> {X} = $x; $self -> {Y} = $y;
}
#------------------------------------#
package main;
# クラスのオブジェクトリファレンスを作成
$obj = new Class;

# メソッドの呼び出し
$obj -> modify_obj("test A", "test B");

print "$obj->{X} : $obj->{Y}\n";

# クラスが継承できているかの確認
use ClassB;
my $obj = new ClassB;
$obj->print_x;