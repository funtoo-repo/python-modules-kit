# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1


DESCRIPTION="Resolve abstract dependencies into concrete ones"
HOMEPAGE="https://github.com/sarugaku/resolvelib/"
SRC_URI="https://github.com/sarugaku/resolvelib/tarball/f7d1404e6a9b8edf073ee5c47d9c07ee62021de1 -> resolvelib-1.1.0-f7d1404.tar.gz"
LICENSE="ISC"

SLOT="0"
KEYWORDS="*"
IUSE="test"

S="${WORKDIR}/sarugaku-resolvelib-f7d1404"

BDEPEND="
	test? (
		dev-python/packaging[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest