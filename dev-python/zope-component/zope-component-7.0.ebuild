# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Zope Component Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.component https://pypi.org/project/zope.component/"
SRC_URI="https://files.pythonhosted.org/packages/b8/c7/1c56951be1b4ae1ac90487e5a7a14335bdfbfc5d3be51151d07d16914f69/zope_component-7.0.tar.gz -> zope_component-7.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/zope_component-7.0"

src_prepare() {
	ln -s "${S}" "${WORKDIR}/zope.component-${PV}"
	distutils-r1_src_prepare
}
