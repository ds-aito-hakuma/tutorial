# ClassAを宣言（ClassBのスーパークラス）
package ClassA;
# コンストラクタの作成
sub new {
  my $class = shift;
  my $self = { X => 10 };
  bless $self, $class;
}

# メソッドの作成
sub print_x {
  my $self = shift;
  print $self->{X}, "\n";
}
1