# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The build backend used by PDM that supports latest packaging standards"
HOMEPAGE="None https://pypi.org/project/pdm-backend/"
SRC_URI="https://files.pythonhosted.org/packages/71/fc/15b83c93a8e7929b62debaad63a3e89b8ce7f8a86075bda0d81e42c3cad5/pdm_backend-2.4.6.tar.gz -> pdm_backend-2.4.6.tar.gz"

DEPEND="
	dev-python/editables[${PYTHON_USEDEP}]
	>=dev-python/packaging-24.0[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/editables[${PYTHON_USEDEP}]
	>=dev-python/packaging-24.0[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pdm_backend-2.4.6"

src_prepare() {
		rm -r src/pdm/backend/_vendor || die
		find -name '*.py' -exec sed \
				-e 's:from pdm\.backend\._vendor\.:from :' \
				-e 's:from pdm\.backend\._vendor ::' \
				-e 's:import pdm\.backend\._vendor\.:import :' \
				-i {} + || die
		distutils-r1_src_prepare
}
