package Dbtest;
#se strict;
use warnings FATAL => 'all';

use DBI;

# DB Infos
my $db_host = 'dev.local';
my $db_user = 'c5261164';
my $db_pass = '';
my $db_name = 'c5261164';


# establish DB connection
my $db = "DBI:Pg:dbname=${db_name};host=${db_host}";
my $dbh = DBI->connect($db, $db_user, $db_pass, { RaiseError => 1, AutoCommit => 0 });
print "DB Connection successfull\n";


# Select Query
sub selectAll {
    my $prepQuery = $dbh->prepare("SELECT * FROM users;");
    $prepQuery->execute();

    while (my @row = $prepQuery->fetchrow_array()) {
        print "ID = ". $row[0] . " ";
        print "Name = ". $row[1] . "\n";
    }
}

# enables cli subroutine calls
unless (caller) {
    print shift->(@ARGV);
}

$dbh->disconnect();
1;