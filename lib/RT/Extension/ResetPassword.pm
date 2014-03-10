package RT::Extension::ResetPassword;

use strict;
use warnings;

our $VERSION = '0.05';

=head1 NAME

RT::Extension::ResetPassword - add "forgot your password?" link to RT instance

=head1 DESCRIPTION

This extension for RT adds a new "Forgot your password?" link to the front
of your RT instance. Any user can request that RT send them a password
reset token by email.  RT will send the user a one-time URL which he or
she can use to reset her password. This extension allows only users that
already have passwords reset their passwords by email.
There isn't yet an option to only allow privileged or unpriviliged users
to reset their passwords.

=head1 INSTALL

This extension should be compatible with RT 3.4 and later

To install this extension:

    perl Makefile.PL
    make install
    make initdb # first time only, not on upgrades

If you are running RT 3.8 or later, you must add RT-Extension-
ResetPassword to your @Plugins in your RT_SiteConfig

Set(@Plugins, qw(RT::Extension::ResetPassword Your::Other::Extensions));

Make sure you clear your mason cache before restarting apache
rm -rf /opt/rt3/var/mason_data/obj/*
apachectl restart

=head1 AUTHOR

Jesse Vincent <jesse at bestpractical.com>

=head1 LICENSE AND COPYRIGHT

Copyright 2006-2013 Best Practical Solutions, LLC.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1;
