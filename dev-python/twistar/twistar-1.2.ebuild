# Copyright 2010-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5
PYTHON_COMPAT=( python2_7 pypy )
PYTHON_REQ_USE='sqlite?'

inherit distutils-r1

DESCRIPTION="An implementation of the Active Record pattern for Twisted"
HOMEPAGE="http://findingscience.com/${PN}"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
KEYWORDS="~x86 ~amd64 ~x86-fbsd"
SLOT="0"
IUSE="mysql postgres sqlite odbc"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/twisted-core[${PYTHON_USEDEP}]
	mysql? ( dev-python/mysql-python[${PYTHON_USEDEP}] )
	postgres? ( dev-python/psycopg:2[${PYTHON_USEDEP}] )
	odbc? ( dev-python/pyodbc )"
