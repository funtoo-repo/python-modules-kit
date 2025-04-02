# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="multidict implementation"
HOMEPAGE="https://github.com/aio-libs/multidict/"
SRC_URI="https://files.pythonhosted.org/packages/a1/d4/4e0e25aabd94f289b7d47da8293a3563e73ac1a4f7e9caddf11b6eeaf52d/multidict-6.3.1.tar.gz -> multidict-6.3.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"
RESTRICT="!test? ( test )"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/cython-0.28.4[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
"
RDEPEND=""

python_prepare_all() {
	# don't use pytest-runner for tests
	sed -i "s|'pytest-runner'||" setup.py || die
	distutils-r1_python_prepare_all
}

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	py.test -v tests || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )
	distutils-r1_python_install_all
}