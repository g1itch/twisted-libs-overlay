# Copyright 2012-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Twisted wrapper for asynchronous PostgreSQL connections"
HOMEPAGE="http://wulczer.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.bz2"

LICENSE="MIT"
KEYWORDS="~x86 ~amd64 ~x86-fbsd"
SLOT="0"

RDEPEND="dev-python/twisted-core[${PYTHON_USEDEP}]
	dev-python/psycopg:2[${PYTHON_USEDEP}]"
