. ./config
PREFIX=`realpath $ROOT`
export PATH=$PATH:$PREFIX/bin

cd $ROOT/build/gdb-7.7
make clean
../../src/gdb-7.7/configure \
 --target=$TARGET \
 --prefix=$PREFIX \
 --enable-interwork \
 --enable-multilib
make -j4 all
make install
cd -
