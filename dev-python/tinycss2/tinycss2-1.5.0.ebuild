# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A tiny CSS parser"
HOMEPAGE="None https://pypi.org/project/tinycss2/"
SRC_URI="https://files.pythonhosted.org/packages/83/75/00f94ca4e8fe9e791b43cba1cf4ed5538bf8ec2318b1b64a1a30c252c53f/tinycss2-1.5.0.tar.gz -> tinycss2-1.5.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/webencodings[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/tinycss2-1.5.0"