git clone https://github.com/google/re2.git
cd re2
git checkout 2025-11-05
mkdir build && cd build
cmake .. \
    -DCMAKE_INSTALL_PREFIX=re2_install \
    -DCMAKE_PREFIX_PATH=xxx/cpp3rdlib/abseil-cpp-20260107.1-debian12-x86_64-gcc12.2.0
make -j$(nproc)
make install
mv re2_install/ ../..
cd ../..
rm -rf re2
mv re2_install re2
