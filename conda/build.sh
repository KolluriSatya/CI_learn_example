BINARIES="kma kma_index kma_shm kma_update"
cp CFLAGS="-w -O3 -I$PREFIX/include -L$PREFIX/lib"
mkdir -p ${PREFIX}/bin
cp $BINARIES $PREFIX/bin
mkdir -p $PREFIX/doc/kma
cp README.md $PREFIX/doc/kma/
{{ PYTHON }} -m pip install . --no-deps --ignore-installed -vvv
