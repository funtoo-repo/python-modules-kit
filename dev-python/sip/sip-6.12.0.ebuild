# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for CC libraries"
HOMEPAGE="None https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/25/fb/67c5ebb38defec74da7a3e2e0fa994809d152e3d4097f260bc7862a7af30/sip-6.12.0.tar.gz -> sip-6.12.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-7[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.12.0"