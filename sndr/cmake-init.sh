#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source $DIR/env.sh

mkdir ${BUILD_DIR}
pushd ${BUILD_DIR}
cmake \
-DBUILD_QT5=ON \
-DCOIN3D_INCLUDE_DIRS=/opt/coin4/include/ \
-DCOIN3D_LIBRARIES=/opt/coin4/lib64/libCoin.so.4.0.0 \
-DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
-DCMAKE_INSTALL_LIBDIR=${INSTALL_DIR}/lib \
-DCMAKE_INSTALL_DATAROOTDIR=${INSTALL_DIR}/usr/share \
-DFREECAD_USE_OCC_VARIANT=Official_Version \
-DMpidotH=/usr/include/mpi.h \
-DMEDFILE_INCLUDE_DIRS=/usr/include/med \
-DFREECAD_USE_QTWEBMODULE="Qt Webkit" \
-DPYTHON_EXECUTABLE=${PY_EXE} \
-DPYTHON_LIBRARIES=${PY_LIB} \
-DPYTHON_LIBPATH=${PY_LIB_PATH} \
-DPYTHON_INCLUDE_DIRS=${PY_INC} \
${ROOT_DIR}

# cmake --build . -j ${NUM_BUILD_PROCS}
popd
