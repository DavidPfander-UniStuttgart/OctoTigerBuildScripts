#!/bin/bash
set -e
set -x

if [ -z ${octotiger_source_me_sources} ] ; then
    source source-me.sh
fi

# if [ -z ${basedir+x} ] ; then
#     echo "basedir is not set. Please source sourceme.sh";
#     kill -INT $$
# fi

cd ${basedir}/src
if [ ! -d boost_1_63_0 ] ; then
    if [ ! -f boost_1_63_0.tar.gz ] ; then
       # wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.gz
        wget http://vorboss.dl.sourceforge.net/project/boost/boost/1.63.0/boost_1_63_0.tar.gz
    fi
    tar xzf boost_1_63_0.tar.gz
fi

cd boost_1_63_0
export CC=${mycc}
export CXX=${mycxx}
export CFLAGS=${mycflags}
export CXXFLAGS=${mycxxflags}

./bootstrap.sh --prefix=${builddir}/boost_1_63 --without-libraries=python
./b2 -j${PARALLEL_BUILD}
./b2 install

# ./bootstrap.sh --prefix=${builddir}/boost_1_63 --without-libraries=python
# ./b2 -j16 variant=debug
# ./b2 install

cd $basedir
