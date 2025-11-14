# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/zopefoundation/roman"
SRC_URI="https://github.com/zopefoundation/roman/tarball/a443357af7d7050ad6a0ec369fa73a1b9f14a558 -> roman-5.2-a443357.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/zopefoundation-* "$S" || die
	fi
}