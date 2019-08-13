#!/bin/bash

makedepends=" desktop-file-utils"
makedepends+=" curl"
makedepends+=" cmake"
makedepends+=" git"
makedepends+=" gcc-fortran"
makedepends+=" swig"
makedepends+=" shared-mime-info"
makedepends+=" hicolor-icon-theme"
makedepends+=" libxerces-c-devel"
makedepends+=" python3-pyside2"
makedepends+=" python3-matplotlib"
#makedepends+=" python-netcdf4"
makedepends+=" qt5-plugin-sqlite"
makedepends+=" python3-pivy"
makedepends+=" python-devel"
makedepends+=" python3-devel"
makedepends+=" boost-devel"
makedepends+=" libmed-devel"
makedepends+=" libxerces-c-devel"
makedepends+=" zlib-devel"
makedepends+=" occt-devel"
makedepends+=" vtk-devel"
makedepends+=" hdf5-devel"
makedepends+=" openmpi-devel"
makedepends+=" libmed-devel"
makedepends+=" eigen"
makedepends+=" double-conversion-devel"
makedepends+=" coin3-devel"

makedepends+=" libshiboken2-devel"
makedepends+=" python3-shiboken2"
makedepends+=" libshiboken-python3-devel"

makedepends+=" libpyside-python"
makedepends+=" libpyside-python-devel"

makedepends+=" libpyside-python3"
makedepends+=" libpyside-python3-devel"

makedepends+=" libspnav-devel"
makedepends+=" pyside-tools"
makedepends+=" pyside2-tools"
makedepends+=" liblz4-devel"
makedepends+=" libpyside2-python3-devel"
makedepends+=" netcdf-devel"
makedepends+=" jsoncpp-devel"
makedepends+=" qt5-devel"
makedepends+=" qt5-svg-devel"
makedepends+=" qt5-tools-devel"
makedepends+=" qt5-webkit-devel"
makedepends+=" qt5-x11extras-devel"
makedepends+=" coin3-doc"
makedepends+=" glew-devel"

DATE=`date +%y%m%d`
_inst_prefix="/opt/freecad-${DATE}"
CMAKE_ARGS="-DBUILD_QT5=ON"
CMAKE_ARGS+=" -DCMAKE_INSTALL_PREFIX=${_inst_prefix}"
CMAKE_ARGS+=" -DCMAKE_INSTALL_LIBDIR=${_inst_prefix}/lib"
CMAKE_ARGS+=" -DCMAKE_INSTALL_DATAROOTDIR=/usr/share"
CMAKE_ARGS+=" -DFREECAD_USE_OCC_VARIANT=Official_Version"
CMAKE_ARGS+=" -DPYTHON_EXECUTABLE=/usr/bin/python3.6"
CMAKE_ARGS+=" -DPYTHON_INCLUDE_DIR=/usr/include/python3"
CMAKE_ARGS+=" -DPYTHON_LIBRARAY=/usr/lib/libpython3.6m.so"
CMAKE_ARGS+=" -DMEDFILE_INCLUDE_DIRS=/usr/include/med"

hostmakedepends="pkg-config swig doxygen graphviz"


sudo xbps-install -S ${makedepends}

mkdir build
pushd build
cmake ${CMAKE_ARGS} /Projects/Github/freecad_sndr
cmake --build -j 6 .
popd
