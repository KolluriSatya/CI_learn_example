BINARIES="kma kma_index kma_shm kma_update"
make CFLAGS="-w -O3 -I$PREFIX/include -L$PREFIX/lib"

mkdir -p ${PREFIX}/bin
cp $BINARIES $PREFIX/bin

CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="${RECIPE_DIR}/cross-linux.cmake")

cmake -DCMAKE_INSTALL_PREFIX=${PREFIX}/bin \
  ${CMAKE_PLATFORM_FLAGS[@]} \
  ${PREFIX}/bin


mkdir -p $PREFIX/doc/kma
cp README.md $PREFIX/doc/kma/