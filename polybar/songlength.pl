use strict;
use warnings;

my $songLength = $ARGV[0]/60e6;
my $secs = fmod($songLength,1)*60;

my $mins = int($songLength);
#if($secs<10){
#	$secs = "0$secs";
#}
#print $secs;
print("$mins:$secs:$songLength");
