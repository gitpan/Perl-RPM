###############################################################################
#
#   (c) Copyright @ 2000, Red Hat Software, Inc.,
#               All Rights Reserved
#
###############################################################################
#
#   $Id$
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
use vars qw(@ISA @EXPORT_OK %EXPORT_TAGS $VERSION $AUTOLOAD);

require Exporter;

use RPM;

@ISA = qw(Exporter);

$VERSION = '0.1';

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
                NEW_SIGNATURE
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
                RPMLEAD_BINARY
                RPMLEAD_MAGIC0
                RPMLEAD_MAGIC1
                RPMLEAD_MAGIC2
                RPMLEAD_MAGIC3
                RPMLEAD_SIZE
                RPMLEAD_SOURCE
                RPMMESS_ALTNAME
                RPMMESS_BACKUP
                RPMMESS_DEBUG
                RPMMESS_ERROR
                RPMMESS_FATALERROR
                RPMMESS_NORMAL
                RPMMESS_PREREQLOOP
                RPMMESS_QUIET
                RPMMESS_VERBOSE
                RPMMESS_WARNING
                RPMPROB_FILTER_DISKSPACE
                RPMPROB_FILTER_FORCERELOCATE
                RPMPROB_FILTER_IGNOREARCH
                RPMPROB_FILTER_IGNOREOS
                RPMPROB_FILTER_OLDPACKAGE
                RPMPROB_FILTER_REPLACENEWFILES
                RPMPROB_FILTER_REPLACEOLDFILES
                RPMPROB_FILTER_REPLACEPKG
                RPMSENSE_ANY
                RPMSENSE_CONFLICTS
                RPMSENSE_EQUAL
                RPMSENSE_GREATER
                RPMSENSE_LESS
                RPMSENSE_OBSOLETES
                RPMSENSE_PREREQ
                RPMSENSE_PROVIDES
                RPMSENSE_SENSEMASK
                RPMSENSE_SERIAL
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
                RPMTAG_AUTOPROV
                RPMTAG_AUTOREQ
                RPMTAG_AUTOREQPROV
                RPMTAG_BASENAMES
                RPMTAG_BROKENMD5
                RPMTAG_BUILDARCHS
                RPMTAG_BUILDCONFLICTS
                RPMTAG_BUILDHOST
                RPMTAG_BUILDMACROS
                RPMTAG_BUILDPREREQ
                RPMTAG_BUILDREQUIRES
                RPMTAG_BUILDROOT
                RPMTAG_BUILDTIME
                RPMTAG_CAPABILITY
                RPMTAG_CHANGELOG
                RPMTAG_CHANGELOGNAME
                RPMTAG_CHANGELOGTEXT
                RPMTAG_CHANGELOGTIME
                RPMTAG_CONFLICTFLAGS
                RPMTAG_CONFLICTNAME
                RPMTAG_CONFLICTVERSION
                RPMTAG_COOKIE
                RPMTAG_COPYRIGHT
                RPMTAG_DEFAULTPREFIX
                RPMTAG_DESCRIPTION
                RPMTAG_DIRINDEXES
                RPMTAG_DIRNAMES
                RPMTAG_DISTRIBUTION
                RPMTAG_DOCDIR
                RPMTAG_EPOCH
                RPMTAG_EXCLUDE
                RPMTAG_EXCLUDEARCH
                RPMTAG_EXCLUDEOS
                RPMTAG_EXCLUSIVE
                RPMTAG_EXCLUSIVEARCH
                RPMTAG_EXCLUSIVEOS
                RPMTAG_EXTERNAL_TAG
                RPMTAG_FILEDEVICES
                RPMTAG_FILEFLAGS
                RPMTAG_FILEGIDS
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
                RPMTAG_FILEUIDS
                RPMTAG_FILEUSERNAME
                RPMTAG_FILEVERIFYFLAGS
                RPMTAG_FIRSTFREE_TAG
                RPMTAG_GIF
                RPMTAG_GROUP
                RPMTAG_HASH_BASE
                RPMTAG_HASH_HAVAL_5_160
                RPMTAG_HASH_MD2
                RPMTAG_HASH_MD5
                RPMTAG_HASH_RIPEMD160
                RPMTAG_HASH_SHA1
                RPMTAG_HASH_TIGER192
                RPMTAG_ICON
                RPMTAG_INSTALLPREFIX
                RPMTAG_INSTALLTIME
                RPMTAG_INSTPREFIXES
                RPMTAG_LICENSE
                RPMTAG_NAME
                RPMTAG_NOPATCH
                RPMTAG_NOSOURCE
                RPMTAG_OBSOLETEFLAGS
                RPMTAG_OBSOLETENAME
                RPMTAG_OBSOLETES
                RPMTAG_OBSOLETEVERSION
                RPMTAG_OLDFILENAMES
                RPMTAG_OLDORIGFILENAMES
                RPMTAG_ORIGBASENAMES
                RPMTAG_ORIGDIRINDEXES
                RPMTAG_ORIGDIRNAMES
                RPMTAG_OS
                RPMTAG_PACKAGER
                RPMTAG_PATCH
                RPMTAG_PK_BASE
                RPMTAG_PK_DH
                RPMTAG_PK_DSA
                RPMTAG_PK_ECDSA
                RPMTAG_PK_ELGAMAL_E
                RPMTAG_PK_ELGAMAL_ES
                RPMTAG_PK_ELLIPTIC
                RPMTAG_PK_RSA_E
                RPMTAG_PK_RSA_ES
                RPMTAG_PK_RSA_S
                RPMTAG_POSTIN
                RPMTAG_POSTINPROG
                RPMTAG_POSTUN
                RPMTAG_POSTUNPROG
                RPMTAG_PREFIXES
                RPMTAG_PREIN
                RPMTAG_PREINPROG
                RPMTAG_PREREQ
                RPMTAG_PREUN
                RPMTAG_PREUNPROG
                RPMTAG_PROVIDEFLAGS
                RPMTAG_PROVIDENAME
                RPMTAG_PROVIDES
                RPMTAG_PROVIDEVERSION
                RPMTAG_RELEASE
                RPMTAG_REQUIREFLAGS
                RPMTAG_REQUIRENAME
                RPMTAG_REQUIREVERSION
                RPMTAG_ROOT
                RPMTAG_RPMVERSION
                RPMTAG_SERIAL
                RPMTAG_SIZE
                RPMTAG_SOURCE
                RPMTAG_SOURCEPACKAGE
                RPMTAG_SOURCERPM
                RPMTAG_SUMMARY
                RPMTAG_TRIGGERFLAGS
                RPMTAG_TRIGGERIN
                RPMTAG_TRIGGERINDEX
                RPMTAG_TRIGGERNAME
                RPMTAG_TRIGGERPOSTUN
                RPMTAG_TRIGGERSCRIPTPROG
                RPMTAG_TRIGGERSCRIPTS
                RPMTAG_TRIGGERUN
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
                RPMVAR_INCLUDE
                RPMVAR_MACROFILES
                RPMVAR_NUM
                RPMVAR_OPTFLAGS
                RPMVAR_PROVIDES
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
                RPM_MACHTABLE_BUILDARCH
                RPM_MACHTABLE_BUILDOS
                RPM_MACHTABLE_COUNT
                RPM_MACHTABLE_INSTARCH
                RPM_MACHTABLE_INSTOS
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
                  rpmsense rpmsigtag rpmsig rpmtag rpmtrans_flag rpmvar
                  rpmverify rpm_machtable uninstall verify))
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
$groups{rpmtypes} = [];
for (grep($_ =~ /^RPM_.*_TYPE/, sort keys %consts))
{
    push(@{$groups{rpmtypes}}, $_);
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
