# Copyright 2009-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

MY_PN="TxScheduling"
MY_P=${MY_PN}-${PV}

inherit distutils-r1

DESCRIPTION="Twisted module for scheduling tasks."
HOMEPAGE="https://github.com/benliles/${MY_PN}"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
KEYWORDS="~x86 ~amd64 ~x86-fbsd"
SLOT="0"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/twisted-core[${PYTHON_USEDEP}]
	net-zope/zope-interface[${PYTHON_USEDEP}]"

S="${WORKDIR}"/${MY_P}
