case $(uname -m) in
  x86_64)
    sed -i.orig '/m64=/s/lib64/lib/' gcc/config/i386/t-linux64
  ;;
esac

mkdir build                                            &&
cd    build                                            &&

../configure                                           \
    --prefix=/usr                                      \
    --libexecdir=/usr/libexec			       \
    --disable-multilib                                 \
    --with-system-zlib                                 \
    --enable-languages=c,c++,d,fortran,go,objc,obj-c++ &&
make

