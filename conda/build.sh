#!/bin/bash
BINARIES="kma kma_index kma_shm kma_update"
make CFLAGS="-w -O3 -I$PREFIX/include -L$PREFIX/lib"
mkdir -p ${PREFIX}/bin
cp $BINARIES $PREFIX/bin
mkdir -p $PREFIX/doc/kma
cp README.md $PREFIX/doc/kma/

export CXXFLAGS_DEFAULT=${CXXFLAGS}
    export CXXFLAGS="${CXXFLAGS} -isysroot ${CONDA_BUILD_SYSROOT} -mmacosx-version-min=${MACOSX_DEPLOYMENT_TARGET}"
    export INSTALL_NAME_TOOL=${INSTALL_NAME_TOOL:-install_name_tool}
fi
scons -Q PREFIX=${PREFIX} install