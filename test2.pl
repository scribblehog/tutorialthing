use strict;
use warnings;

my $name = "Ryan";
my $num = 19;

print "Happy " . $num . "th birthday " . $name . "!!!\n";

my @wow = (1,2,3,4,5,6);
print $wow[0] + $#wow + (scalar @wow) . "\n";
my @gmail = "hahahah";
print "janice@gmail.com\n";
print "janice\@gmail.com\n";
print 'janice@gmail.com\n' . "\n";

my %fruit = (
	"Raspberries" => "Great",
	"Strawberries" => "Good",
	"Apricots" => "Decent"
);

print $fruit{"Raspberries"} . "\n";

my @word = ("hello", "hellohello");
print  (@word) . "\n";
print scalar reverse (scalar $word[0]) . "\n";
