# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="zope.deferredimport allows you to perform imports names that will only be resolved when used in the code."
HOMEPAGE="http://github.com/zopefoundation/zope.deferredimport https://pypi.org/project/zope.deferredimport/"
SRC_URI="https://files.pythonhosted.org/packages/0f/c9/61e76bf52b07109cc0ca1210f448ad3744fedb61beed06a5d3bb0f703329/zope_deferredimport-6.0.tar.gz -> zope_deferredimport-6.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/zope_deferredimport-6.0"

src_prepare() {
	ln -s "${S}" "${WORKDIR}/zope.deferredimport-${PV}"
	distutils-r1_src_prepare
}
