# module unload gcc/4.9.3

module swap craype-haswell craype-mic-knl
module swap PrgEnv-intel PrgEnv-gnu
# module load boost/1.62
module load cmake/3.8.2
module unload darshan
module load vtune

module list


# export basedir=/global/cscratch1/sd/pfandedd/cori/gcc2
# #export myarch=${CRAY_CPU_TARGET}
# export myarch=mic-knl-gcc
# export hpxtoolchain=${basedir}/src/hpx/cmake/toolchains/CrayKNL.cmake
# export buildtype=Release
# export malloc=jemalloc

# # special flags for some library builds
# export mycflags="-fPIC -march=knl"
# export mycxxflags="-fPIC -march=knl"
# export myldflags="-fPIC"
# export mycc=gcc
# export mycxx=g++
# export myfc=gfortran

# echo ""
# echo "NB: "
# echo "basedir is set to ${basedir}."
# echo "  All paths are relative to that base."
# echo "myarch is set to ${myarch}."
# echo "  Build output will be in ${myarch}-build."
# echo ""
