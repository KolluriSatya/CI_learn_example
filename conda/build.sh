BINARIES="kma kma_index kma_shm kma_update"
make CFLAGS="-w -O3 -I$PREFIX/include -L$PREFIX/lib"

mkdir -p ${PREFIX}/bin
cp $BINARIES $PREFIX/bin "${PREFIX}"/bin/systemd-socket-activate_"${python=3.10}"
mkdir -p $PREFIX/doc/kma

cp README.md $PREFIX/doc/kma/