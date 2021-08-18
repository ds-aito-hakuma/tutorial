package SampleModule;
use Exporter;
@ISA = (Exporter);
@EXPORT = qw(sub1);
@EXPORT_OK = qw(sub2);
sub sub1 { print "This is sub1 of SampleModule!\n"; }
sub sub2 { print "This is sub2 of SampleModule!!\n" }

print $word, "\n";
BEGIN {
  $word = "BEGIN!";
}

END {
  print "END!\n";
}