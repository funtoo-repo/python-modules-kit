# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1


DESCRIPTION="Resolve abstract dependencies into concrete ones"
HOMEPAGE="https://github.com/sarugaku/resolvelib/"
SRC_URI="https://github.com/sarugaku/resolvelib/tarball/c9ef371ad96e698bf3e0bb09acc682bd43e39bd7 -> resolvelib-1.0.1-c9ef371.tar.gz"
LICENSE="ISC"

SLOT="0"
KEYWORDS="*"
IUSE="test"

S="${WORKDIR}/sarugaku-resolvelib-c9ef371"

BDEPEND="
	test? (
		dev-python/packaging[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest