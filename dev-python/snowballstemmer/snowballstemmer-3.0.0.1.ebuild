# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Stemmer algorithms generated from Snowball algorithms"
HOMEPAGE="https://github.com/shibukawa/snowball_py https://pypi.org/project/snowballstemmer/"
SRC_URI="https://files.pythonhosted.org/packages/71/81/f47e97c9850c529ab233fd1cd8319e0e5a1cfae49c87c49ab2fd0a19c744/snowballstemmer-3.0.0.1.tar.gz -> snowballstemmer-3.0.0.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""