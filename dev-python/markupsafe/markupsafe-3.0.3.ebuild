# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Implements a XML/HTML/XHTML Markup safe string for Python"
HOMEPAGE="https://pypi.org/project/MarkupSafe"
SRC_URI="https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz -> markupsafe-3.0.3.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/markupsafe-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/markupsafe-3.0.3"

src_prepare() {
	sed -i -e 's/license = "BSD-3-Clause"/license = { text = "BSD-3-Clause" }/' pyproject.toml || die
	sed -i -e '/license-files = \[/,/]/d' pyproject.toml || die
	distutils-r1_src_prepare
}
