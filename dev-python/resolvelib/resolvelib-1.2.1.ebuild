# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1


DESCRIPTION="Resolve abstract dependencies into concrete ones"
HOMEPAGE="https://github.com/sarugaku/resolvelib/"
SRC_URI="https://github.com/sarugaku/resolvelib/tarball/982d9f7daefbeca5a7feaac46ad09234ddefe2f5 -> resolvelib-1.2.1-982d9f7.tar.gz"
LICENSE="ISC"

SLOT="0"
KEYWORDS="*"
IUSE="test"

S="${WORKDIR}/sarugaku-resolvelib-982d9f7"

BDEPEND="
	test? (
		dev-python/packaging[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest