# Build glog library
git clone https://github.com/google/glog.git
cd glog
git checkout v0.7.1
mkdir build && cd build
# use absolute path
cmake \
  -DCMAKE_INSTALL_PREFIX=glog_install \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DCMAKE_PREFIX_PATH=xxx/cpp3rdlib/gflags-2.2.2-debian12-x86_64-gcc12.2.0/lib/cmake/gflags \
  -DWITH_GFLAGS=ON \
  -DBUILD_SHARED_LIBS=OFF \
  -DBUILD_TESTING=OFF \
  ..
make -j$(nproc)
make install
mv glog_install ../../
cd ../..
rm -rf glog
mv glog_install glog