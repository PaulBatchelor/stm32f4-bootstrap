. ./config
PREFIX=`realpath $ROOT`
export PATH=$PATH:$PREFIX/bin

cd $ROOT/build/gcc-4.9.1
make clean
../../src/gcc-4.9.1/configure \
 --target=$TARGET \
 --prefix=$PREFIX \
 --with-cpu=cortex-m4 \
 --with-fpu=fpv4-sp-d16 \
 --with-float=hard \
 --with-mode=thumb \
 --enable-interwork \
 --enable-multilib \
 --enable-languages="c" \
 --with-system-zlib \
 --with-newlib \
 --without-headers \
 --disable-shared \
 --disable-nls \
 --disable-ssp \
 --with-gnu-as \
 --with-gnu-ld  

make -j4 all-gcc
make install-gcc

cd -
