
use strict;
use warnings;

my $name = "Ryan";
my $num = 19;

print "Happy " . $num . "th birthday " . $name . "!!!\n";

my @wow = (1,2,3,4,5,6);
print $wow[3] + $#wow + (scalar @wow) . "\n";
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

my $colour = "Indigo";
my $scalarRef = \$colour;
print $colour;         # "Indigo"
print $scalarRef;      # e.g. "SCALAR(0x182c180)"
print ${ $scalarRef }; # "Indigo"

my @colours = ("Blue","Red", "Green");
my $colourRef = \@colours;
print ${$colourRef}[0];

my $owner1Ref = {
	"name" => "Ryan",
	"DOB" => "13/06/2000",
};
my $owner2Ref = {
	"name" => "Ryan 2",
	"DOB" => "13/06/2000",
};
my $ownersRef = [$owner1Ref, $owner2Ref];

my $account = (
"number" => "12323",
"opened" => "some time ago",
"owners" => $ownersRef
	);

my $age = 9;
if ($age <=14){
	print "You should not drink!\n";
} elsif ($age <= 17){
	print "Don't drink too much!\n";
} else {
	print "Drink as much as you want!\n";
}

print "You are a" , ($age >= 18) ? "n adult!\n" : " child.\n";

while ($age < 18){
	$age++;
	print 'You are now '. $age . "\n";
}

for(my $i=0; $i < scalar @wow; $i++){
	print $i;
	print ($wow[$i]);
}

foreach my $item ( @colours){
	print "This is " . $item . "\n";
}

CANDIDATE: for my $candidate ( 2 .. 100 ) {
	for my $divisor ( 2 .. sqrt $candidate ) {
		next CANDIDATE if $candidate % $divisor == 0;
	}
	print $candidate." is prime\n";
}

my @stack = ("Fred", "Eileen", "Denise", "Charlie");
print pop @stack;
push @stack, "Bob";
print shift @stack;
unshift @stack, "Ryan";
print "\n";
print @stack;
print "\n";
print join(", ", @stack);
print "\n";
print join(", ", grep {length $_ <6} @stack);
print "\n";
print join(", ", map { uc $_} @stack);
print "\n";
sub add {
	my $sum = 0;
	foreach my $item (@_){
		$sum = $sum + $item;
	}
	return $sum;
}

print add((1,2,3,4));