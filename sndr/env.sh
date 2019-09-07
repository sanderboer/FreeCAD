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


PY_EXE="/usr/bin/python3.6"
PPY_LIB="/usr/lib/libpython3.6m"
PPY_LIB_PATH="/usr/lib/python3.6"
PPY_INC="/usr/include/python3.6m/Python.h"



echo "DIR:              ${DIR}"
echo "ROOT_DIR:         ${ROOT_DIR}"
echo "BUILD_DIR:        ${BUILD_DIR}"
echo "INSTALL_DIR:      ${INSTALL_DIR}"
echo "NUM_BUILD_PROCS:  ${NUM_BUILD_PROCS}"
echo "MAUCPY:           ${MAUCPY}"
echo "TODAY:            ${TODAY}"
