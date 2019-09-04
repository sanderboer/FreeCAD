DIR="$( cd -P "$( dirname "$0" )" && pwd )"
source $DIR/env.sh

echo "BUILD_DIR: ${BUILD_DIR}"

if [ ! -d "${BUILD_DIR}" ]; then
    echo "no cmake build dir present, regenerating..."
    source $DIR/cmake-init.sh;
fi

pushd ${BUILD_DIR}
echo "--- building on ${UNAME}"
# cmake --build . -j ${IFCOS_NUM_BUILD_PROC} --target install
cmake --build . -j ${NUM_BUILD_PROCS} 
popd


