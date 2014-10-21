###############################################################################
#
#   (c) Copyright @ 2000, Red Hat Software, Inc.,
#               All Rights Reserved
#
###############################################################################
#
#   $Id: Constants.pm,v 1.2 2000/06/05 08:10:32 rjray Exp $
#
#   Description:    Constants for the RPM package
#
#   Functions:      None-- constants are implemented as pseudo-functions
#
#   Libraries:      RPM (to force bootstrapping)
#
###############################################################################

package RPM::Constants;

use strict;
use vars qw(@ISA @EXPORT_OK %EXPORT_TAGS $VERSION $revision $AUTOLOAD);

require Exporter;

use RPM;

@ISA = qw(Exporter);

$VERSION = $RPM::VERSION;
$revision = do { my @r=(q$Revision: 1.2 $=~/\d+/g); sprintf "%d."."%02d"x$#r,@r };

@EXPORT_OK = qw(
                ADD_SIGNATURE
                CHECKSIG_GPG
                CHECKSIG_MD5
                CHECKSIG_PGP
                INSTALL_HASH
                INSTALL_LABEL
                INSTALL_NODEPS
                INSTALL_NOORDER
                INSTALL_PERCENT
                INSTALL_UPGRADE
                QUERY_FOR_CONFIG
                QUERY_FOR_DOCS
                QUERY_FOR_DUMPFILES
                QUERY_FOR_LIST
                QUERY_FOR_STATE
                RPM_NULL_TYPE
                RPM_CHAR_TYPE
                RPM_INT8_TYPE
                RPM_INT16_TYPE
                RPM_INT32_TYPE
                RPM_STRING_TYPE
                RPM_BIN_TYPE
                RPM_STRING_ARRAY_TYPE
                RPM_I18NSTRING_TYPE
                RPMERR_BADARG
                RPMERR_BADDEV
                RPMERR_BADFILENAME
                RPMERR_BADMAGIC
                RPMERR_BADRELOCATE
                RPMERR_BADSIGTYPE
                RPMERR_BADSPEC
                RPMERR_CHOWN
                RPMERR_CPIO
                RPMERR_CREATE
                RPMERR_DBCORRUPT
                RPMERR_DBGETINDEX
                RPMERR_DBOPEN
                RPMERR_DBPUTINDEX
                RPMERR_EXEC
                RPMERR_FILECONFLICT
                RPMERR_FLOCK
                RPMERR_FORK
                RPMERR_GDBMOPEN
                RPMERR_GDBMREAD
                RPMERR_GDBMWRITE
                RPMERR_GZIP
                RPMERR_INTERNAL
                RPMERR_LDD
                RPMERR_MKDIR
                RPMERR_MTAB
                RPMERR_NEWPACKAGE
                RPMERR_NOCREATEDB
                RPMERR_NOGROUP
                RPMERR_NORELOCATE
                RPMERR_NOSPACE
                RPMERR_NOSPEC
                RPMERR_NOTSRPM
                RPMERR_NOUSER
                RPMERR_OLDDB
                RPMERR_OLDDBCORRUPT
                RPMERR_OLDDBMISSING
                RPMERR_OLDPACKAGE
                RPMERR_PKGINSTALLED
                RPMERR_READERROR
                RPMERR_RENAME
                RPMERR_RMDIR
                RPMERR_RPMRC
                RPMERR_SCRIPT
                RPMERR_SIGGEN
                RPMERR_STAT
                RPMERR_UNKNOWNARCH
                RPMERR_UNKNOWNOS
                RPMERR_UNLINK
                RPMERR_UNMATCHEDIF
                RPMFILE_CONFIG
                RPMFILE_DOC
                RPMFILE_DONOTUSE
                RPMFILE_GHOST
                RPMFILE_LICENSE
                RPMFILE_MISSINGOK
                RPMFILE_NOREPLACE
                RPMFILE_README
                RPMFILE_SPECFILE
                RPMFILE_STATE_NETSHARED
                RPMFILE_STATE_NORMAL
                RPMFILE_STATE_NOTINSTALLED
                RPMFILE_STATE_REPLACED
                RPMPROB_FILTER_DISKSPACE
                RPMPROB_FILTER_FORCERELOCATE
                RPMPROB_FILTER_IGNOREARCH
                RPMPROB_FILTER_IGNOREOS
                RPMPROB_FILTER_OLDPACKAGE
                RPMPROB_FILTER_REPLACENEWFILES
                RPMPROB_FILTER_REPLACEOLDFILES
                RPMPROB_FILTER_REPLACEPKG
                RPMSENSE_EQUAL
                RPMSENSE_GREATER
                RPMSENSE_LESS
                RPMSENSE_OBSOLETES
                RPMSENSE_PREREQ
                RPMSENSE_SENSEMASK
                RPMSENSE_TRIGGER
                RPMSENSE_TRIGGERIN
                RPMSENSE_TRIGGERPOSTUN
                RPMSENSE_TRIGGERUN
                RPMSIGTAG_GPG
                RPMSIGTAG_LEMD5_1
                RPMSIGTAG_LEMD5_2
                RPMSIGTAG_MD5
                RPMSIGTAG_PGP
                RPMSIGTAG_PGP5
                RPMSIGTAG_SIZE
                RPMSIG_BAD
                RPMSIG_NOKEY
                RPMSIG_NOTTRUSTED
                RPMSIG_OK
                RPMSIG_UNKNOWN
                RPMTAG_ARCH
                RPMTAG_ARCHIVESIZE
                RPMTAG_BASENAMES
                RPMTAG_BUILDARCHS
                RPMTAG_BUILDHOST
                RPMTAG_BUILDMACROS
                RPMTAG_BUILDROOT
                RPMTAG_BUILDTIME
                RPMTAG_CAPABILITY
                RPMTAG_CHANGELOGNAME
                RPMTAG_CHANGELOGTEXT
                RPMTAG_CHANGELOGTIME
                RPMTAG_CONFLICTFLAGS
                RPMTAG_CONFLICTNAME
                RPMTAG_CONFLICTVERSION
                RPMTAG_COOKIE
                RPMTAG_DESCRIPTION
                RPMTAG_DIRINDEXES
                RPMTAG_DIRNAMES
                RPMTAG_DISTRIBUTION
                RPMTAG_EPOCH
                RPMTAG_EXCLUDEARCH
                RPMTAG_EXCLUDEOS
                RPMTAG_EXCLUSIVEARCH
                RPMTAG_EXCLUSIVEOS
                RPMTAG_FILEDEVICES
                RPMTAG_FILEFLAGS
                RPMTAG_FILEGROUPNAME
                RPMTAG_FILEINODES
                RPMTAG_FILELANGS
                RPMTAG_FILELINKTOS
                RPMTAG_FILEMD5S
                RPMTAG_FILEMODES
                RPMTAG_FILEMTIMES
                RPMTAG_FILERDEVS
                RPMTAG_FILESIZES
                RPMTAG_FILESTATES
                RPMTAG_FILEUSERNAME
                RPMTAG_FILEVERIFYFLAGS
                RPMTAG_GIF
                RPMTAG_GROUP
                RPMTAG_ICON
                RPMTAG_INSTALLTIME
                RPMTAG_INSTPREFIXES
                RPMTAG_LICENSE
                RPMTAG_NAME
                RPMTAG_OBSOLETEFLAGS
                RPMTAG_OBSOLETENAME
                RPMTAG_OBSOLETEVERSION
                RPMTAG_OS
                RPMTAG_PACKAGER
                RPMTAG_PATCH
                RPMTAG_POSTIN
                RPMTAG_POSTINPROG
                RPMTAG_POSTUN
                RPMTAG_POSTUNPROG
                RPMTAG_PREFIXES
                RPMTAG_PREIN
                RPMTAG_PREINPROG
                RPMTAG_PREUN
                RPMTAG_PREUNPROG
                RPMTAG_PROVIDEFLAGS
                RPMTAG_PROVIDENAME
                RPMTAG_PROVIDEVERSION
                RPMTAG_RELEASE
                RPMTAG_REQUIREFLAGS
                RPMTAG_REQUIRENAME
                RPMTAG_REQUIREVERSION
                RPMTAG_ROOT
                RPMTAG_RPMVERSION
                RPMTAG_SIZE
                RPMTAG_SOURCE
                RPMTAG_SOURCERPM
                RPMTAG_SUMMARY
                RPMTAG_TRIGGERCONDS
                RPMTAG_TRIGGERFLAGS
                RPMTAG_TRIGGERINDEX
                RPMTAG_TRIGGERNAME
                RPMTAG_TRIGGERSCRIPTPROG
                RPMTAG_TRIGGERSCRIPTS
                RPMTAG_TRIGGERVERSION
                RPMTAG_URL
                RPMTAG_VENDOR
                RPMTAG_VERIFYSCRIPT
                RPMTAG_VERIFYSCRIPTPROG
                RPMTAG_VERSION
                RPMTAG_XPM
                RPMTRANS_FLAG_ALLFILES
                RPMTRANS_FLAG_BUILD_PROBS
                RPMTRANS_FLAG_JUSTDB
                RPMTRANS_FLAG_KEEPOBSOLETE
                RPMTRANS_FLAG_NODOCS
                RPMTRANS_FLAG_NOSCRIPTS
                RPMTRANS_FLAG_NOTRIGGERS
                RPMTRANS_FLAG_TEST
                RPMVERIFY_ALL
                RPMVERIFY_FILESIZE
                RPMVERIFY_GROUP
                RPMVERIFY_LINKTO
                RPMVERIFY_LSTATFAIL
                RPMVERIFY_MD5
                RPMVERIFY_MODE
                RPMVERIFY_MTIME
                RPMVERIFY_NONE
                RPMVERIFY_RDEV
                RPMVERIFY_READFAIL
                RPMVERIFY_READLINKFAIL
                RPMVERIFY_USER
                UNINSTALL_ALLMATCHES
                UNINSTALL_NODEPS
                VERIFY_DEPS
                VERIFY_FILES
                VERIFY_MD5
                VERIFY_SCRIPT
               );

#
# To create the %EXPORT_TAGS table, we're going to create a temp hash with
# the tags broken down into groupings. Then when the "known" groupings are
# done, whatever is left can go in "misc"
#
my %groups = ();
my %consts = map { $_, 1 } @EXPORT_OK;
for my $group (qw(install query rpmerr rpmfile rpmlead rpmmess rpmprob_filter
                  rpmsense rpmsigtag rpmsig rpmtag rpmtrans_flag
                  rpmverify uninstall verify))
{
    my $pat = qr/^$group/i;
    my $list = [];

    for (grep($_ =~ $pat, sort keys %consts))
    {
        push(@$list, $_);
        delete $consts{$_};
    }

    $groups{$group} = $list;
}

# Types didn't fit neatly into the above logic-loop
$groups{rpmtype} = [];
for (grep($_ =~ /^RPM_.*_TYPE/, sort keys %consts))
{
    push(@{$groups{rpmtype}}, $_);
    delete $consts{$_};
}

# Pick up any stragglers
$groups{misc} = [ sort keys %consts ];

# Merge the install and uninstall groups
push(@{$groups{install}}, @{$groups{uninstall}});
delete $groups{uninstall};

%EXPORT_TAGS = (
                all => [ @EXPORT_OK ],
                %groups
               );

sub AUTOLOAD {
    my $constname;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    die "& not defined" if $constname eq 'constant';
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
        if ($! =~ /Invalid/) {
            $AutoLoader::AUTOLOAD = $AUTOLOAD;
            goto &AutoLoader::AUTOLOAD;
        }
        else {
            die "Your vendor has not defined RPM macro $constname";
        }
    }
    no strict 'refs';
    *$AUTOLOAD = sub { $val };
    goto &$AUTOLOAD;
}

1;

__END__

=head1 NAME

RPM::Constants - Groups of RPM-defined symbols

=head1 SYNOPSIS

    use RPM::Constants qw(:rpmerr :rpmtype);

=head1 DESCRIPTION

This package is a collection of the constants defined by B<rpm> itself that
may be of use to those developing with the B<RPM> Perl bindings.

=head1 GROUPS

For ease of use and uderstanding (at last count, the total number of
constants was 232), the constants are broken up into several smaller groups:

=head2 Header Tag Identifiers

The following symbols may be imported via the tag B<:rpmtag>, and represent
the various elements that may be present in a package header:

=over

=item RPMTAG_ARCH

Name of the architecture that the package was built for. If the package
is architecture-independant, the value should read "noarch".

=item RPMTAG_ARCHIVESIZE

Size of the archive portion of the file (total file size minus header data).

=item RPMTAG_BASENAMES

A list of the base (leaf) names of the files contained within the package.
These are combined with the values from B<RPMTAG_DIRNAMES> using a mapping
provided by B<RPMTAG_DIRINDEXES>.

=item RPMTAG_BUILDARCHS

Not documented yet.

=item RPMTAG_BUILDHOST

Name of the host the package was built on.

=item RPMTAG_BUILDMACROS

Not documented yet.

=item RPMTAG_BUILDROOT

Specifies the root at which the package is built.

=item RPMTAG_BUILDTIME

The time/date when the package was created, expressed as a C<time()> value
(seconds since the epoch).

=item RPMTAG_CAPABILITY

Not certain. See the B<RPMTAG_PROVIDE*> and B<RPMTAG_REQUIRE*> groups.

=item RPMTAG_CHANGELOGNAME

=item RPMTAG_CHANGELOGTEXT

=item RPMTAG_CHANGELOGTIME

These three items should be taken together. Each should have the same number
of items, and the items at corresponding indices should be taken together.
Taken this way, they provide a small-scale changelog for the package, detailing
the name of the person making the entry, the text of the entry and the time
of the entry, in the respective order given above.

=item RPMTAG_CONFLICTFLAGS

=item RPMTAG_CONFLICTNAME

=item RPMTAG_CONFLICTVERSION

These three items are used in conjunction to specify packages and/or
individual files which the package itself would conflict with. Of the three,
only B<RPMTAG_CONFLICTNAME> is required to have data in all elements of
the array.  The other two wil have the same number of elements, though some
(or most) may be null. This is the same approach as is used to specify the
elements that the package obsoletes, those the package provides and those
the package requires (see below).

=item RPMTAG_COOKIE

A simple tag, a single text string, added at the time the RPM is created.
Generally, it is created from the hostname on which the package is built
and the UNIX C<time()> value at the time of packaging.

=item RPMTAG_DESCRIPTION

A textual description of the package.

=item RPMTAG_DIRINDEXES

This data should have a one-to-one correspondance with B<RPMTAG_BASENAMES>,
above. Each item here is a numerical index into the list of directories named
in B<RPMTAG_DIRNAMES> below. It indicates which of the directories is to be
prepended to the corresponding base file name in order to create the full
pathname.

=item RPMTAG_DIRNAMES

This is a list of all directories into which the package would install files.
This list is used with B<RPMTAG_BASENAMES> to create full paths, indexed by
way of B<RPMTAG_DIRINDEXES> above.

=item RPMTAG_DISTRIBUTION

Not documented yet.

=item RPMTAG_EPOCH

Not documented yet.

=item RPMTAG_EXCLUDEARCH

Not documented yet.

=item RPMTAG_EXCLUDEOS

Not documented yet.

=item RPMTAG_EXCLUSIVEARCH

Not documented yet.

=item RPMTAG_EXCLUSIVEOS

Not documented yet.

=item RPMTAG_FILEDEVICES

Not documented yet.

=item RPMTAG_FILEFLAGS

Not documented yet.

=item RPMTAG_FILEGROUPNAME

A string-array data field that contains the group ID (by name) that should
be used for setting group ownership of the files contained in the package.
There should be a one-to-one correspondance between this list and the list of
files in C<RPMTAG_BASENAMES>. See also C<RPMTAG_USERNAME>.

=item RPMTAG_FILEINODES

Not documented yet.

=item RPMTAG_FILELANGS

Not documented yet.

=item RPMTAG_FILELINKTOS

Not documented yet.

=item RPMTAG_FILEMD5S

Not documented yet.

=item RPMTAG_FILEMODES

Not documented yet.

=item RPMTAG_FILEMTIMES

Not documented yet.

=item RPMTAG_FILERDEVS

Not documented yet.

=item RPMTAG_FILESIZES

Not documented yet.

=item RPMTAG_FILESTATES

Not documented yet.

=item RPMTAG_FILEUSERNAME

A string-array data field that contains the user ID (by name) that should
be used for setting ownership of the files contained in the package. There
should be a one-to-one correspondance between this list and the list of
files in C<RPMTAG_BASENAMES>. See also C<RPMTAG_GROUPNAME>.

=item RPMTAG_FILEVERIFYFLAGS

Not documented yet.

=item RPMTAG_GIF

Not directly used by the B<rpm> library. Likely intended to hold a GIF
image that external software could make use of. See C<RPMTAG_XPM> below.

=item RPMTAG_GROUP

A one-line text string that places the package within the overall hierarchy
of packages, using a UNIX-style format of denoting level with forward-slash
characters (C</>). Most packages will have at least two elements separated by
one such slash, though more are possible (as is a top-level name).

=item RPMTAG_ICON

Not directly used by the B<rpm> library. Likely intended to hold an image
of some neutral format that external software could make use of.
See C<RPMTAG_XPM> below and C<RPMTAG_GIF> above.

=item RPMTAG_INSTALLTIME

Not documented yet.

=item RPMTAG_INSTPREFIXES

Not documented yet.

=item RPMTAG_LICENSE

The license and/or restrictions under which the package is distributed.

=item RPMTAG_NAME

The name of the package. This is the first part of a triple used to uniquely
identify a given package. It is used in conjunction with B<RPMTAG_VERSION>
and B<RPMTAG_RELEASE>, in that order.

=item RPMTAG_OBSOLETEFLAGS

=item RPMTAG_OBSOLETENAME

=item RPMTAG_OBSOLETEVERSION

These three items are used in conjunction to specify packages and/or
individual files which the package itself obsoletes. Of the three, only
B<RPMTAG_OBSOLETENAME> is required to have data in all elements of the array.
The other two wil have the same number of elements, though some (or most)
may be null. This is the same approach as is used to specify the elements
that the package conflicts with, those the package provides and those the
package requires (see below).

=item RPMTAG_OS

The name of the O/S for which the package is intended.

=item RPMTAG_PACKAGER

Name of the group/company/individual who built the package.

=item RPMTAG_PATCH

Not documented yet.

=item RPMTAG_POSTIN

Not documented yet.

=item RPMTAG_POSTINPROG

Not documented yet.

=item RPMTAG_POSTUN

Not documented yet.

=item RPMTAG_POSTUNPROG

Not documented yet.

=item RPMTAG_PREFIXES

Not documented yet.

=item RPMTAG_PREIN

Not documented yet.

=item RPMTAG_PREINPROG

Not documented yet.

=item RPMTAG_PREUN

Not documented yet.

=item RPMTAG_PREUNPROG

Not documented yet.

=item RPMTAG_PROVIDEFLAGS

=item RPMTAG_PROVIDENAME

=item RPMTAG_PROVIDEVERSION

These three items are used in conjunction to specify the specific files that
the package itself provides to other packages as possible dependancies. Of the
three, only B<RPMTAG_PROVIDENAME> is required to have data in all elements
of the array.  The other two wil have the same number of elements, though
some (or most) may be null. This three-part specification is also used to
itemize dependancies (see below) and obsoletions (see above).

=item RPMTAG_RELEASE

The release part of the identifying triple for a package. This is combined
with the B<RPMTAG_NAME> and B<RPMTAG_VERSION> tags to create a unique
identification for each package.

=item RPMTAG_REQUIREFLAGS

=item RPMTAG_REQUIRENAME

=item RPMTAG_REQUIREVERSION

These three items are used in conjunction to specify packages and/or
individual files on which the package itself depends. Of the three, only
B<RPMTAG_REQUIRENAME> is required to have data in all elements of the array.
The other two wil have the same number of elements, though some (or most)
may be null. This is the same approach as is used to specify the elements
that the package provides and those the package obsoletes (see above).

=item RPMTAG_ROOT

Not documented yet.

=item RPMTAG_RPMVERSION

The version of B<rpm> used when bundling the package.

=item RPMTAG_SIZE

Total size of the package, when existant as a disk file.

=item RPMTAG_SOURCE

An integer value that should be treated as a boolean, true (1) if the package
is a source-RPM (SRPM) and false (0) if it is not. Generally, if it is not a
source-RPM then this tag will simply not be present on the header.

=item RPMTAG_SOURCERPM

The source-RPM (SRPM) file used to build this package. If the file being
queried is itself a source-RPM, this tag will be non-existent or null in
value.

=item RPMTAG_SUMMARY

A one line summary description of the package.

=item RPMTAG_TRIGGERCONDS

Not documented yet.

=item RPMTAG_TRIGGERFLAGS

Not documented yet.

=item RPMTAG_TRIGGERINDEX

Not documented yet.

=item RPMTAG_TRIGGERNAME

Not documented yet.

=item RPMTAG_TRIGGERSCRIPTPROG

Not documented yet.

=item RPMTAG_TRIGGERSCRIPTS

Not documented yet.

=item RPMTAG_TRIGGERVERSION

Not documented yet.

=item RPMTAG_URL

A Uniform Resource Locator (generally a WWW page) for the vendor/individual
or for the software project itself.

=item RPMTAG_VENDOR

An alternate identifier for the company that created and provided the package.

=item RPMTAG_VERIFYSCRIPT

Not documented yet.

=item RPMTAG_VERIFYSCRIPTPROG

Not documented yet.

=item RPMTAG_VERSION

The package version, the second part (with B<RPMTAG_NAME> and
B<RPMTAG_RELEASE>) of the triple used to uniquely identify packages.

=item RPMTAG_XPM

Not directly used by the B<rpm> library. Likely intended to hold an XPM
image that external software could make use of. See C<RPMTAG_GIF> above.

=back

=head2 Header Data Types

The following symbols may be imported via the tag B<:rpmtype>, and represent
the different types of which the various header tags (described above) may
return data:

=over

=item RPM_NULL_TYPE

This is used internally by the C-level B<rpm> library.

=item RPM_CHAR_TYPE

This type represents single-character data.

=item RPM_INT8_TYPE

All items of this type are 8-bit integers.

=item RPM_INT16_TYPE

This type represents 16-bit integers.

=item RPM_INT32_TYPE

This type represents 32-bit integers.

=item RPM_BIN_TYPE

Data of this type represents a chunk of binary data without any further
decoding or translation. It is stored as a string in Perl terms, and the
C<length> keyword should return the size of the chunk.

=item RPM_STRING_TYPE

=item RPM_STRING_ARRAY_TYPE

=item RPM_I18NSTRING_TYPE

These data types represent strings of text. Each are stored and treated the
same internally by Perl.

=back

=head2 Error Codes

The following symbols may be imported via the tag B<:rpmerr>. They represent
the set of pre-defined error conditions that the B<rpm> system anticipates
as possibly occuring:

=over

=item RPMERR_BADARG

Not documented yet.

=item RPMERR_BADDEV

Not documented yet.

=item RPMERR_BADFILENAME

Not documented yet.

=item RPMERR_BADMAGIC

Not documented yet.

=item RPMERR_BADRELOCATE

Not documented yet.

=item RPMERR_BADSIGTYPE

Not documented yet.

=item RPMERR_BADSPEC

Not documented yet.

=item RPMERR_CHOWN

Not documented yet.

=item RPMERR_CPIO

Not documented yet.

=item RPMERR_CREATE

Not documented yet.

=item RPMERR_DBCORRUPT

Not documented yet.

=item RPMERR_DBGETINDEX

Not documented yet.

=item RPMERR_DBOPEN

Not documented yet.

=item RPMERR_DBPUTINDEX

Not documented yet.

=item RPMERR_EXEC

Not documented yet.

=item RPMERR_FILECONFLICT

Not documented yet.

=item RPMERR_FLOCK

Not documented yet.

=item RPMERR_FORK

Not documented yet.

=item RPMERR_GDBMOPEN

Not documented yet.

=item RPMERR_GDBMREAD

Not documented yet.

=item RPMERR_GDBMWRITE

Not documented yet.

=item RPMERR_GZIP

Not documented yet.

=item RPMERR_INTERNAL

Not documented yet.

=item RPMERR_LDD

Not documented yet.

=item RPMERR_MKDIR

Not documented yet.

=item RPMERR_MTAB

Not documented yet.

=item RPMERR_NEWPACKAGE

Not documented yet.

=item RPMERR_NOCREATEDB

Not documented yet.

=item RPMERR_NOGROUP

Not documented yet.

=item RPMERR_NORELOCATE

Not documented yet.

=item RPMERR_NOSPACE

Not documented yet.

=item RPMERR_NOSPEC

Not documented yet.

=item RPMERR_NOTSRPM

Not documented yet.

=item RPMERR_NOUSER

Not documented yet.

=item RPMERR_OLDDB

Not documented yet.

=item RPMERR_OLDDBCORRUPT

Not documented yet.

=item RPMERR_OLDDBMISSING

Not documented yet.

=item RPMERR_OLDPACKAGE

Not documented yet.

=item RPMERR_PKGINSTALLED

Not documented yet.

=item RPMERR_READERROR

Not documented yet.

=item RPMERR_RENAME

Not documented yet.

=item RPMERR_RMDIR

Not documented yet.

=item RPMERR_RPMRC

Not documented yet.

=item RPMERR_SCRIPT

Not documented yet.

=item RPMERR_SIGGEN

Not documented yet.

=item RPMERR_STAT

Not documented yet.

=item RPMERR_UNKNOWNARCH

Not documented yet.

=item RPMERR_UNKNOWNOS

Not documented yet.

=item RPMERR_UNLINK

Not documented yet.

=item RPMERR_UNMATCHEDIF

Not documented yet.

=back

=head2 Pre-requisite Sense Flags

The following values may be imported via the tag B<:rpmsense>, and are
used with the values from B<RPMTAG_REQUIREFLAGS> to establish the nature
of the requirement relationship:

=over

=item RPMSENSE_SENSEMASK

This is a mask that, when applied to a value from B<RPMTAG_REQUIREFLAGS>,
masks out all bits except for the following three values:

=item RPMSENSE_EQUAL

=item RPMSENSE_GREATER

=item RPMSENSE_LESS

These values are used to check the corresponding entries from
B<RPMTAG_REQUIRENAME> and B<RPMTAG_REQUIREVERSION>, and specify whether
the existing file should be of a version equal to, greater than or less than
the version specified. More than one flag may be present.

=item RPMSENSE_PREREQ

The corresponding item from B<RPMTAG_REQUIRENAME> is a simple pre-requisite,
generally without specific version checking.

=item RPMSENSE_TRIGGER

Not documented yet.

=item RPMSENSE_TRIGGERIN

Not documented yet.

=item RPMSENSE_TRIGGERPOSTUN

Not documented yet.

=item RPMSENSE_TRIGGERUN

Not documented yet.

=back

=head2 Not Yet Defined

=over

=item ADD_SIGNATURE

Not documented yet.

=item CHECKSIG_GPG

Not documented yet.

=item CHECKSIG_MD5

Not documented yet.

=item CHECKSIG_PGP

Not documented yet.

=item INSTALL_HASH

Not documented yet.

=item INSTALL_LABEL

Not documented yet.

=item INSTALL_NODEPS

Not documented yet.

=item INSTALL_NOORDER

Not documented yet.

=item INSTALL_PERCENT

Not documented yet.

=item INSTALL_UPGRADE

Not documented yet.

=item QUERY_FOR_CONFIG

Not documented yet.

=item QUERY_FOR_DOCS

Not documented yet.

=item QUERY_FOR_DUMPFILES

Not documented yet.

=item QUERY_FOR_LIST

Not documented yet.

=item QUERY_FOR_STATE

Not documented yet.

=item RPMFILE_CONFIG

Not documented yet.

=item RPMFILE_DOC

Not documented yet.

=item RPMFILE_DONOTUSE

Not documented yet.

=item RPMFILE_GHOST

Not documented yet.

=item RPMFILE_LICENSE

Not documented yet.

=item RPMFILE_MISSINGOK

Not documented yet.

=item RPMFILE_NOREPLACE

Not documented yet.

=item RPMFILE_README

Not documented yet.

=item RPMFILE_SPECFILE

Not documented yet.

=item RPMFILE_STATE_NETSHARED

Not documented yet.

=item RPMFILE_STATE_NORMAL

Not documented yet.

=item RPMFILE_STATE_NOTINSTALLED

Not documented yet.

=item RPMFILE_STATE_REPLACED

Not documented yet.

=item RPMPROB_FILTER_DISKSPACE

Not documented yet.

=item RPMPROB_FILTER_FORCERELOCATE

Not documented yet.

=item RPMPROB_FILTER_IGNOREARCH

Not documented yet.

=item RPMPROB_FILTER_IGNOREOS

Not documented yet.

=item RPMPROB_FILTER_OLDPACKAGE

Not documented yet.

=item RPMPROB_FILTER_REPLACENEWFILES

Not documented yet.

=item RPMPROB_FILTER_REPLACEOLDFILES

Not documented yet.

=item RPMPROB_FILTER_REPLACEPKG

Not documented yet.

=item RPMSIGTAG_GPG

Not documented yet.

=item RPMSIGTAG_LEMD5_1

Not documented yet.

=item RPMSIGTAG_LEMD5_2

Not documented yet.

=item RPMSIGTAG_MD5

Not documented yet.

=item RPMSIGTAG_PGP

Not documented yet.

=item RPMSIGTAG_PGP5

Not documented yet.

=item RPMSIGTAG_SIZE

Not documented yet.

=item RPMSIG_BAD

Not documented yet.

=item RPMSIG_NOKEY

Not documented yet.

=item RPMSIG_NOTTRUSTED

Not documented yet.

=item RPMSIG_OK

Not documented yet.

=item RPMSIG_UNKNOWN

Not documented yet.

=item RPMTRANS_FLAG_ALLFILES

Not documented yet.

=item RPMTRANS_FLAG_BUILD_PROBS

Not documented yet.

=item RPMTRANS_FLAG_JUSTDB

Not documented yet.

=item RPMTRANS_FLAG_KEEPOBSOLETE

Not documented yet.

=item RPMTRANS_FLAG_NODOCS

Not documented yet.

=item RPMTRANS_FLAG_NOSCRIPTS

Not documented yet.

=item RPMTRANS_FLAG_NOTRIGGERS

Not documented yet.

=item RPMTRANS_FLAG_TEST

Not documented yet.

=item RPMVERIFY_ALL

Not documented yet.

=item RPMVERIFY_FILESIZE

Not documented yet.

=item RPMVERIFY_GROUP

Not documented yet.

=item RPMVERIFY_LINKTO

Not documented yet.

=item RPMVERIFY_LSTATFAIL

Not documented yet.

=item RPMVERIFY_MD5

Not documented yet.

=item RPMVERIFY_MODE

Not documented yet.

=item RPMVERIFY_MTIME

Not documented yet.

=item RPMVERIFY_NONE

Not documented yet.

=item RPMVERIFY_RDEV

Not documented yet.

=item RPMVERIFY_READFAIL

Not documented yet.

=item RPMVERIFY_READLINKFAIL

Not documented yet.

=item RPMVERIFY_USER

Not documented yet.

=item UNINSTALL_ALLMATCHES

Not documented yet.

=item UNINSTALL_NODEPS

Not documented yet.

=item VERIFY_DEPS

Not documented yet.

=item VERIFY_FILES

Not documented yet.

=item VERIFY_MD5

Not documented yet.

=item VERIFY_SCRIPT

Not documented yet.

=back

=head1 SEE ALSO

L<RPM>, L<perl>, L<rpm>

=head1 AUTHOR

Randy J. Ray <rjray@blackperl.com>

=cut
