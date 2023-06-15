BINARIES="kma kma_index kma_shm kma_update"
make CFLAGS="-w -O3 -I$PREFIX/include -L$PREFIX/lib"
mkdir -p ${PREFIX}/bin
cp $BINARIES $PREFIX/bin

export CFLAGS="${CFLAGS} -i sysroot ${CONDA_BUILD_SYSROOT}"
export CONDA_BUILD_SYSROOT= $PREFIX/bin

mkdir -p $PREFIX/doc/kma
cp README.md $PREFIX/doc/kma/