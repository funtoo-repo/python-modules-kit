# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Classes Without Boilerplate"
HOMEPAGE="None https://pypi.org/project/attrs/"
SRC_URI="https://files.pythonhosted.org/packages/69/82/3c4e1d44f3cbaa2a578127d641fe385ba3bff6c38b789447ae11a21fa413/attrs-25.2.0.tar.gz -> attrs-25.2.0.tar.gz"

DEPEND="
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/attrs-25.2.0"