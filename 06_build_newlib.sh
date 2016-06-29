. ./config
PREFIX=`realpath $ROOT`
export PATH=$PATH:$PREFIX/bin

cd $ROOT/build/newlib-2.1.0
make clean
../../src/newlib-2.1.0/configure \
 --target=$TARGET \
 --prefix=$PREFIX \
 --with-cpu=cortex-m4 \
 --with-fpu=fpv4-sp-d16 \
 --with-float=hard \
 --with-mode=thumb \
 --enable-interwork \
 --enable-multilib \
 --with-gnu-as \
 --with-gnu-ld \
 --disable-nls \
 --disable-newlib-supplied-syscalls
make -j4 all
make install
cd -
