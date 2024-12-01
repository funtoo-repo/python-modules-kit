# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Graphviz's Dot"
HOMEPAGE="None https://pypi.org/project/pydot/"
SRC_URI="https://files.pythonhosted.org/packages/bf/b8/500a772825c7ca87e4fd69c3bd6740e3375d6792a7065dd92759249f223d/pydot-3.0.3.tar.gz -> pydot-3.0.3.tar.gz"

DEPEND=""
RDEPEND="
	media-gfx/graphviz
	>=dev-python/pyparsing-2.1.4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pydot-3.0.3"