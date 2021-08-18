package Person1;

#クラス変数
$count = 0;

# コンストラクタ（生成関数）
sub new {
  my($class, $name) = @_;
  my($self) = {};
  bless($self, $class);
  $self->{NAME} =$name;
  $count++;
  return $self;
}

# デストラクタ（消滅関数）
sub DESTROY {
  my($self) = @_;
  $count--;
}

# メソッド：NAME属性を設定する
sub setName {
  my($self, $name) = @_;
  $self->{NAME} = $name;
}

# メソッド：NAME属性を参照する
sub getName {
  my($self) = @_;
  return $self->{NAME};
}
1; #useがエラーにならないように０以外の値を記述しておく