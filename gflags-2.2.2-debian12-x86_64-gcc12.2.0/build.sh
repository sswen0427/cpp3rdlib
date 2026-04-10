# Build gflags library
git clone https://github.com/gflags/gflags.git
cd gflags
# See https://github.com/google/glog/blob/v0.7.1/CMakeLists.txt#L77
# glog needs gflags 2.2.2 version
git checkout v2.2.2
mkdir build && cd build
cmake \
  -DBUILD_SHARED_LIBS=ON \
  -DBUILD_STATIC_LIBS=ON \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DCMAKE_INSTALL_PREFIX=gflags_install \
  ..
make -j$(nproc)
make install
mv gflags_install ../../
cd ../..
rm -rf gflags
mv gflags_install gflags