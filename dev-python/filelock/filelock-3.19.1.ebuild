# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A platform independent file lock."
HOMEPAGE="None https://pypi.org/project/filelock/"
SRC_URI="https://github.com/tox-dev/filelock/tarball/8d1009f08a6a64624fad91d1079062ef31b8c2b4 -> filelock-3.19.1-8d1009f.tar.gz"


DEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/tox-dev-filelock-8d1009f"

# Ensure setuptools-scm doesn't try to read VCS metadata when building from a non-git source
python_prepare_all() {
    # Provide a stable version to setuptools-scm to avoid VCS lookups
    export SETUPTOOLS_SCM_PRETEND_VERSION_FOR_FILELOCK="${PV}"
    # Fallback (some projects respect the generic variable)
    export SETUPTOOLS_SCM_PRETEND_VERSION="${PV}"

    distutils-r1_python_prepare_all
}

