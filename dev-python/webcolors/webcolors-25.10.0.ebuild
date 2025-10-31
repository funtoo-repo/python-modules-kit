# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A library for working with the color formats defined by HTML and CSS."
HOMEPAGE="None https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/1d/7a/eb316761ec35664ea5174709a68bbd3389de60d4a1ebab8808bfc264ed67/webcolors-25.10.0.tar.gz -> webcolors-25.10.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-25.10.0"