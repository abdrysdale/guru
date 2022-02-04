# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

EGO_SUM=(
	"github.com/gabriel-vasile/mimetype v1.4.0"
	"github.com/gabriel-vasile/mimetype v1.4.0/go.mod"
	"github.com/mattn/go-xmpp v0.0.0-20211029151415-912ba614897a"
	"github.com/mattn/go-xmpp v0.0.0-20211029151415-912ba614897a/go.mod"
	"github.com/pborman/getopt/v2 v2.1.0"
	"github.com/pborman/getopt/v2 v2.1.0/go.mod"
	"golang.org/x/net v0.0.0-20210505024714-0287a6fb4125/go.mod"
	"golang.org/x/net v0.0.0-20220121210141-e204ce36a2ba"
	"golang.org/x/net v0.0.0-20220121210141-e204ce36a2ba/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210423082822-04245dca01da/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"salsa.debian.org/mdosch/xmppsrv v0.1.0"
	"salsa.debian.org/mdosch/xmppsrv v0.1.0/go.mod"
)
go-module_set_globals

DESCRIPTION="A little tool to send messages to an XMPP contact or MUC"
HOMEPAGE="https://salsa.debian.org/mdosch/go-sendxmpp"
SRC_URI="
	https://salsa.debian.org/mdosch/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.bz2 -> ${P}.tar.bz2
	${EGO_SUM_SRC_URI}
"
S="${WORKDIR}/${PN}-v${PV}"

LICENSE="BSD-2 BSD MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"

src_compile() {
	go build || die
}

src_install() {
	default

	dobin go-sendxmpp
}
