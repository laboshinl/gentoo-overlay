# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="An Omnibus installation of Chef client"
HOMEPAGE="http://www.opscode.com/chef/install/"
SRC_URI="https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/11.04/x86_64/chef_11.4.4-2.ubuntu.11.04_amd64.deb"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
  unpack ${A} ./data.tar.gz
}

src_install() {
  local dest="${D}/opt"
  mkdir -p "$dest"

  cp -pR ./opt/* "$dest"

  dosym "$dest/chef/bin/chef-client" /usr/bin/chef-client || die
  dosym "$dest/chef/bin/chef-solo" /usr/bin/chef-solo     || die
  dosym "$dest/chef/bin/chef-apply" /usr/bin/chef-apply   || die
  dosym "$dest/chef/bin/chef-shell" /usr/bin/chef-shell   || die
  dosym "$dest/chef/bin/knife" /usr/bin/knife             || die
  dosym "$dest/chef/bin/shef" /usr/bin/shef               || die
  dosym "$dest/chef/bin/ohai" /usr/bin/ohai               || die
}
