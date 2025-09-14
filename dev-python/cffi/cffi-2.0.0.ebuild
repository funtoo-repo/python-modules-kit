# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Foreign Function Interface for Python calling C code."
HOMEPAGE="None https://pypi.org/project/cffi/"
SRC_URI="https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz -> cffi-2.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cffi-2.0.0"

src_prepare() {
	sed -i -e 's/license = "MIT"/license = { text = "MIT" }/' pyproject.toml || die
	distutils-r1_src_prepare
}
