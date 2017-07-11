# start of the Class World
package World;
    use strict;
    use warnings FATAL => 'all';

    use CGI;

    # Constructor
    sub new {
        my $class = shift; # contains the class name
        my $self = {}; # data in class is a hash reference
        bless ($self, $class); # makes $self an object of class $class
        return $self;
    }

    # Class Method for Cli Output
    sub hello {
        # variable declaration
        my $world = "Hallo Welt!\n";
        print $world;

    }
    # Class Method for Browser Outputs
    sub helloCgi {
        my $text = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam';
        my $cgi = CGI->new();   # new CGI Object
        print $cgi->header,     # create the HTML header
                $cgi->start_html('Hello World'), # start the html
                $cgi->h1('Hello World!'),
                $cgi->a($text),
                $cgi->end_html; # end the html
    }

    sub test {
        # not needed
        my $cgi = CGI->new();
        # Request Header
        print CGI::header();

        CGI->print("Hello World");
        print CGI::param("foo");

        $cgi->print("Hello World");

    }


# End of Class
1;