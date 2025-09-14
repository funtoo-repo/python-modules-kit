# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="zope.interface extension for defining data schemas"
HOMEPAGE="https://github.com/zopefoundation/zope.schema https://pypi.org/project/zope.schema/"
SRC_URI="https://files.pythonhosted.org/packages/d4/8d/1733d2bfcc9a579374706fe8049e1df203b79c0034002ecf4f5d11d7d548/zope_schema-8.0.tar.gz -> zope_schema-8.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/zope_schema-8.0"

src_prepare() {
	ln -s "${S}" "${WORKDIR}/zope.schema-${PV}"
	distutils-r1_src_prepare
}
