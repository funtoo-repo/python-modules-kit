# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/remko/pycotap"
SRC_URI="https://github.com/remko/pycotap/tarball/3689295b48a526882bcf78f5e6b96336be65a177 -> pycotap-1.3.1-3689295.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/remko-* "$S" || die
	fi
}