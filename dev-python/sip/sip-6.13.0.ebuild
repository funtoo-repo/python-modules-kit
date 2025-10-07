# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for CC libraries"
HOMEPAGE="None https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/3a/24/25ad8ed4747f96ef015c01df18134b78cef6960a83e6104ede6fd5700873/sip-6.13.0.tar.gz -> sip-6.13.0.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-7[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.13.0"