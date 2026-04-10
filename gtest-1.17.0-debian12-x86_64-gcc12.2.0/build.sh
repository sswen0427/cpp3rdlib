# Build googletest(gtest) library
git clone https://github.com/google/googletest.git
cd googletest
git checkout v1.17.0
mkdir build && cd build
cmake \
  -DCMAKE_INSTALL_PREFIX=gtest_install \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DBUILD_SHARED_LIBS=OFF \
  ..
make -j$(nproc)
make install
mv gtest_install ../../
cd ../..
rm -rf googletest
mv gtest_install gtest