# this module intends to hold a tree structure, and functions to handle the
# dir/file been synced by some baka

package BakaTree;

use 5.020;
use warnings;

use File::Basename;
use File::chdir;

use constant DIR  => 0;
use constant FILE => 1;

use parent qw(Exporter);

our @EXPORT    = qw(baka_tree);
our @EXPORT_OK = ();

# recives a path and determines its tree structure
sub baka_tree {
     my ($basename, $path) = fileparse($_[0]);

     local $CWD = "$path"; # go to path

     my @bt;
     $bt[0] = [{ name => $basename, type => DIR }];

     say "$bt[0][0]{name} $bt[0][0]{type}";
     say `ls`;
}

1; # end
