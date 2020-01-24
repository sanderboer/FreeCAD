DIR="$( cd -P "$( dirname "$0" )" && pwd )"
pushd ${DIR}/..
ROOT_DIR=${PWD}
popd

TODAY=`date +%y%m%d`
UNAME=`uname`
BUILD_TYPE="Debug"
BUILD_DIR=${DIR}/build
NUM_BUILD_PROCS=$(expr $(sysctl -n hw.ncpu 2> /dev/null || cat /proc/cpuinfo | grep processor | wc -l) )
NUM_BUILD_PROCS=1
INSTALL_DIR="/opt/freecad-${TODAY}"

# MAUCPY="/opt/miniconda3/envs/maucpy"
# PY_INC="${MAUCPY}/include/python3.7m/Python.h"
# PY_LIB="${MAUCPY}/lib/libpython3.7m.so"


# PY_EXE="/usr/bin/python3"
# PPY_LIB="/usr/lib/libpython3.so"
# PPY_LIB_PATH="/usr/lib/python3.8"
# PPY_INC="/usr/include/python3.8/Python.h"

PY_ROOT="/usr"
PY_EXE="${PY_ROOT}/bin/python3"
PY_LIB="${PY_ROOT}/lib/libpython3.so"
PY_LIB_PATH="${PY_ROOT}/lib/python3.8"
PY_INC="${PY_ROOT}/include/python3.8/Python.h"


# PY_EXE="${PY_ROOT}/bin/python3.7m"
# PPY_LIB="${PY_ROOT}/lib/libpython3.7m.a"
# PPY_LIB_PATH="${PY_ROOT}/lib/python3.7"
# PPY_INC="${PY_ROOT}/include/python3.7m/Python.h"



echo "DIR:              ${DIR}"
echo "ROOT_DIR:         ${ROOT_DIR}"
echo "BUILD_DIR:        ${BUILD_DIR}"
echo "INSTALL_DIR:      ${INSTALL_DIR}"
echo "NUM_BUILD_PROCS:  ${NUM_BUILD_PROCS}"
echo "MAUCPY:           ${MAUCPY}"
echo "TODAY:            ${TODAY}"
