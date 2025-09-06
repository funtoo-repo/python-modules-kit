# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/8d/37/02347f6d6d8279247a5837082ebc26fc0d5aaeaf75aa013fcbb433c777ab/markdown-3.9.tar.gz -> markdown-3.9.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' -3 pypy3)"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/markdown-3.9"

src_prepare() {
	sed -i -e 's/license = "BSD-3-Clause"/license = { text = "BSD-3-Clause" }/' pyproject.toml || die
	sed -i -e '/license-files/d' pyproject.toml || die
	distutils-r1_src_prepare
}
