# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1


DESCRIPTION="Resolve abstract dependencies into concrete ones"
HOMEPAGE="https://github.com/sarugaku/resolvelib/"
SRC_URI="https://github.com/sarugaku/resolvelib/tarball/50f221ba803f6c127b6e20ff2c9a4470524e1239 -> resolvelib-1.2.0-50f221b.tar.gz"
LICENSE="ISC"

SLOT="0"
KEYWORDS="*"
IUSE="test"

S="${WORKDIR}/sarugaku-resolvelib-50f221b"

BDEPEND="
	test? (
		dev-python/packaging[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest