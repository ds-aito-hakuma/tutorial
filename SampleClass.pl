# クラスのパッケージ名を宣言
package SampleClass;

# 解説：クラスメソッドコンストラクタ
sub new{
    # 暗黙のうちに引き渡されるクラス名を受け取る
    my $class = shift;
    # 無名ハッシュのリファレンスを作成
    my $self = {};
    # bless したオブジェクトリファレンスを返す
    return bless $self, $class;
}