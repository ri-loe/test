package HashTest;
use strict;
use warnings FATAL => 'all';

# hash = %, array = @, scalar = $


# => as alias to indicate key/value pairs
my %data = ('John' => 40, 'Lisa' => 27);

# escaped john as string, second is the key value
print "\$data{'John'} = $data{'John'}" . "\n";

# list of all keys in hash
my @keys = keys %data;
# access to values returns scalar values --> $
print $keys[0] . " " . $keys[1] . "\n";

# all values of the hash as array
my @ages = values %data;
print "$ages[0] " . "$ages[1]\n";

# forcing scalar on array, results in value count
print scalar(@keys) . "\n";
1;