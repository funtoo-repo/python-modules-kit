# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Service identity verification for pyOpenSSL & cryptography."
HOMEPAGE="None https://pypi.org/project/service-identity/"
SRC_URI="https://files.pythonhosted.org/packages/09/2e/26ade69944773df4748c19d3053e025b282f48de02aad84906d34a29d28b/service-identity-21.1.0.tar.gz -> service-identity-21.1.0.tar.gz"

DEPEND=""
RDEPEND="!<=dev-python/service_identity-23.1.0 
	dev-python/pyasn1[${PYTHON_USEDEP}]
	dev-python/pyasn1-modules[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/service-identity-21.1.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}