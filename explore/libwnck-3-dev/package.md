

## Start

run

``` sh
$ apt-cache showsrc devilspie | grep '^Build-Depends:'
```

show

```
Build-Depends: debhelper (>= 7), cdbs, autotools-dev, intltool, libglib2.0-dev (>= 2.10), libgtk-3-dev, libwnck-3-dev (>= 2.12), libx11-dev
```


## [Package: [libwnck-3-dev](https://packages.ubuntu.com/bionic/libwnck-3-dev)]

run

``` sh
$ apt-cache show libwnck-3-dev
```

show

```
Package: libwnck-3-dev
Architecture: amd64
Version: 3.24.1-2
Priority: optional
Section: libdevel
Source: libwnck3
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Debian GNOME Maintainers <pkg-gnome-maintainers@lists.alioth.debian.org>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 1111
Depends: libc6 (>= 2.4), libglib2.0-0 (>= 2.32), libgtk-3-0 (>= 3.22.0), libwnck-3-0 (= 3.24.1-2), libx11-6, gir1.2-wnck-3.0 (= 3.24.1-2), libglib2.0-dev (>= 2.32), libpango1.0-dev, libx11-dev, libgtk-3-dev (>= 3.4), libstartup-notification0-dev (>= 0.7), libcairo2-dev, libxres-dev
Conflicts: libwnck-dev (<< 2.30.7-1)
Filename: pool/main/libw/libwnck3/libwnck-3-dev_3.24.1-2_amd64.deb
Size: 88440
MD5sum: afe40ae95c15b514e878f01eee918457
SHA1: be9429f985297828e5a3b2bf11fefc7d189b2bb1
SHA256: 63f77425735254f3f431023825108cc282e73d2cfe15d22ab651864589bbe156
Description-en: Window Navigator Construction Kit - development files
 A library to use for writing pagers and task lists.
 .
 This package contains development files (include headers).
Description-md5: cb65185699281ddbfd4a226066442426
Supported: 5y
```


## [Source Pakage: [libwnck3](https://packages.ubuntu.com/source/bionic/libwnck3)]

run

``` sh
$ apt-cache showsrc libwnck-3-dev
```

show

```
Package: libwnck3
Format: 3.0 (quilt)
Binary: libwnck-3-0, libwnck-3-dev, libwnck-3-common, gir1.2-wnck-3.0
Architecture: any all
Version: 3.24.1-2
Priority: optional
Section: libs
Maintainer: Debian GNOME Maintainers <pkg-gnome-maintainers@lists.alioth.debian.org>
Uploaders: Dmitry Shachnev <mitya57@debian.org>, Iain Lane <laney@debian.org>, Jeremy Bicha <jbicha@debian.org>, Michael Biebl <biebl@debian.org>
Standards-Version: 4.1.3
Build-Depends: debhelper (>= 11), gnome-pkg-tools (>= 0.10), gettext (>= 0.19.4), libstartup-notification0-dev (>= 0.7), docbook-xml, libx11-dev, libxres-dev, libxext-dev, libgtk-3-dev (>= 3.22.0), libglib2.0-dev (>= 2.32), gobject-introspection (>= 0.10), libgirepository1.0-dev (>= 0.10), gtk-doc-tools (>= 1.9), libglib2.0-doc, libgtk-3-doc
Vcs-Browser: https://anonscm.debian.org/git/pkg-gnome/libwnck3.git
Vcs-Git: https://anonscm.debian.org/git/pkg-gnome/libwnck3.git
Directory: pool/main/libw/libwnck3
Package-List:
 gir1.2-wnck-3.0 deb introspection optional arch=any
 libwnck-3-0 deb libs optional arch=any
 libwnck-3-common deb libs optional arch=all
 libwnck-3-dev deb libdevel optional arch=any
Files:
 db3bd8e888ec938abbc2fd54ef0d8e53 2470 libwnck3_3.24.1-2.dsc
 23df51ec0a1169014fe3a102d572b244 821508 libwnck3_3.24.1.orig.tar.xz
 163a41df0c9a6c030ed7ca07f70746f1 10988 libwnck3_3.24.1-2.debian.tar.xz
Checksums-Sha1:
 0bf2e58ccf53ee9e63800d36790c4f5742362923 2470 libwnck3_3.24.1-2.dsc
 5c16cd0c63022cfa7cf2f824d037482cfbd9068b 821508 libwnck3_3.24.1.orig.tar.xz
 e1e86f08f0d93717c7ea6fb6f1ef3d5724a55f1c 10988 libwnck3_3.24.1-2.debian.tar.xz
Checksums-Sha256:
 32f2ee7f0ca889bc5ca8170ad3cdada57e0020c1de506796e6f28ada4e60af39 2470 libwnck3_3.24.1-2.dsc
 afa6dc283582ffec15c3374790bcbcb5fb422bd38356d72deeef35bf7f9a1f04 821508 libwnck3_3.24.1.orig.tar.xz
 897fe4cc066353ea159f4cfad14d4d724a1a3eaba8a65698779044d986b14dc1 10988 libwnck3_3.24.1-2.debian.tar.xz
```
