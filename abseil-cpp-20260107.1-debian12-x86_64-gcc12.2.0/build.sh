git clone https://github.com/abseil/abseil-cpp.git
cd abseil-cpp
git checkout 20260107.1
cmake -DCMAKE_INSTALL_PREFIX=abseil-cpp_install ..
make -j$(nproc)
make install
mv abseil-cpp_install/ ../..
cd ../..
rm abseil-cpp -rf
mv abseil-cpp_install abseil-cpp