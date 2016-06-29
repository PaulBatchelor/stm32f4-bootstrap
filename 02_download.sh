. ./config

cd $ROOT/orig
echo Downloading files into $ROOT/orig
wget ftp://ftp.gnu.org/gnu/binutils/binutils-2.25.tar.gz
wget ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.gz
wget ftp://sources.redhat.com/pub/newlib/newlib-2.1.0.tar.gz
wget ftp://ftp.gnu.org/gnu/gdb/gdb-7.7.tar.gz
cd -
