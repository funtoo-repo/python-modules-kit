# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Nonblocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="None https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/09/31/12f5618ff4eabda022c488e9a71b1458b82ed06e07521320331b18b94df3/motor-10.10.10.10.tar.gz -> motor-10.10.10.10.tar.gz"

DEPEND="dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]"
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-10.10.10.10"