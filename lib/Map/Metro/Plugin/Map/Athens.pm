use 5.14.0;

package Map::Metro::Plugin::Map::Athens;

our $VERSION = '0.1100'; # VERSION

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-athens.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=encoding utf-8

=head1 NAME

Map::Metro::Plugin::Map::Athens - Map::Metro map for Athens

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Athens')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

As of 2015-01-02 it contains the three Metro lines and the two Proastiakos lines. See L<wikipedia|https://en.wikipedia.org/wiki/Athens_metro>.

Notes:

* Larissa Station (Athens Railway Station) is considered to be the same station on both M2 and P1.

* The Irakleio station on P2 is called 'Irakleio P' to separate it from the Irakleio station on M1.

See L<Map::Metro::Plugin::Map::Athens::Lines>.

=begin HTML

<p><a href="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Athens/master/static/images/athens.png"><img src="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Athens/master/static/images/athens.png" style="max-width: 600px" /></a></p>

=end HTML

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2015 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
