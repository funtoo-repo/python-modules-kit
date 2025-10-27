# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="zope.interface extension for defining data schemas"
HOMEPAGE="https://github.com/zopefoundation/zope.schema https://pypi.org/project/zope.schema/"
SRC_URI="https://files.pythonhosted.org/packages/17/25/2f1bdf78a8b94460db53972253b455a3b2576e6822dccb3e402d9179fad3/zope_schema-8.1.tar.gz -> zope_schema-8.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/zope_schema-8.1"

src_prepare() {
	ln -s "${S}" "${WORKDIR}/zope.schema-${PV}"
	distutils-r1_src_prepare
}
