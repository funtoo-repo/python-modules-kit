# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/zopefoundation/roman"
SRC_URI="https://github.com/zopefoundation/roman/tarball/87499720c531e2e6c61eeb35d14601a7b251dd54 -> roman-5.1-8749972.tar.gz
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