# ハッシュ
my %hash = (
  'キー１' => 19,
  'キー２' => 98,
  'キー３' => 4,
  'キー４' => 24,
);

# 配列の要素を表すときは$array[];ハッシュの値を得るときは$hash{};

# ハッシュの内容を表示する
foreach my $key (keys(%hash)) {
  my $value = $hash{$key};
  print "$key -> $value\n";
}

# 配列の要素から重複を除いたリストを作る
my %uniq;
my @array = (3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5);
print "重複している配列：@array\n";
foreach my $item (@array) {
  $uniq{$item} = 1;
}

my @uniqarray = keys{%uniq};
print "重複を除いた配列：@uniqarray\n";

# ハッシュに関する関数
# keysとvalues
my @keys = keys(%hash);
my @values = values(%hash);
print "keys:" , join(',', @keys), "\n";
print "values:", join(',', @values), "\n";
# keysとeach
while(my($key, $value) = each(%hash)) {
  print "$key -> $value\n";
}