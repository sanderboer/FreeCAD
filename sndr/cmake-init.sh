#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source $DIR/env.sh

CMAKE_ARGS="-DBUILD_QT5=ON"
#CMAKE_ARGS+=" -DCMAKE_MODULE_PATH=/opt/coin4/lib64/cmake/"
CMAKE_ARGS+=" -DCOIN3D_INCLUDE_DIRS=/opt/coin4/include/"
CMAKE_ARGS+=" -DCOIN3D_LIBRARIES=/opt/coin4/lib64/libCoin.so.4.0.0"
CMAKE_ARGS+=" -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR}"
CMAKE_ARGS+=" -DCMAKE_INSTALL_LIBDIR=${INSTALL_DIR}/lib"
CMAKE_ARGS+=" -DCMAKE_INSTALL_DATAROOTDIR=${INSTALL_DIR}/usr/share"
CMAKE_ARGS+=" -DFREECAD_USE_OCC_VARIANT=Official_Version"
CMAKE_ARGS+=" -DMpidotH=/usr/include/mpi.h"
CMAKE_ARGS+=" -DMEDFILE_INCLUDE_DIRS=/usr/include/med"

#CMAKE_ARGS+=" -DPYTHON_EXECUTABLE=${MAUCPY}/bin/python3.7"
#CMAKE_ARGS+=" -DPYTHON_LIBRARY=${PY_LIB}"
#CMAKE_ARGS+=" -DPYTHON_LIBPATH=${MAUCPY}/lib"
#CMAKE_ARGS+=" -DPYTHON_INCLUDE_DIR=${MAUCPY}/include/python3.7m"

CMAKE_ARGS+=" -DPYTHON_EXECUTABLE=${PY_EXE}"
CMAKE_ARGS+=" -DPYTHON_LIBRARIES=${PY_LIB}"
CMAKE_ARGS+=" -DPYTHON_LIBPATH=${PY_LIB_PATH}"
CMAKE_ARGS+=" -DPYTHON_INCLUDE_DIRS=${PY_INC}"



mkdir ${BUILD_DIR}
pushd ${BUILD_DIR}
cmake ${CMAKE_ARGS} ${ROOT_DIR}
# cmake --build . -j ${NUM_BUILD_PROCS}
popd
