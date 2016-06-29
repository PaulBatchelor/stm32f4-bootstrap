. ./config

cd $ROOT/src
tar xvf ../orig/binutils-2.25.tar.gz
tar xvf ../orig/gcc-4.9.1.tar.gz
tar xvf ../orig/newlib-2.1.0.tar.gz
tar xvf ../orig/gdb-7.7.tar.gz
cd -
cd $ROOT/build
mkdir `ls ../src`
cd -
cp newlib-2.1.0.patch $ROOT/src/
cd $ROOT/src/newlib-2.1.0
patch -p1 < ../newlib-2.1.0.patch
cd -
