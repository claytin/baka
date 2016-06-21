# this module intends to hold a tree structure, and functions to handle the
# dir/file been synced by some baka

package BakaTree;

use 5.020;
use warnings;

use parent qw(Exporter);

our @EXPORT    = qw(greet);
our @EXPORT_OK = ();

sub greet {
     say "Hi $_[0]";
}

1; # end
