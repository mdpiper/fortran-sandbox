BUILD_DIR=_build
PREFIX=_install
# PREFIX=$CONDA_PREFIX

cmake -B ${BUILD_DIR} \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE=Debug

cmake --build ${BUILD_DIR}
cmake --install ${BUILD_DIR}
