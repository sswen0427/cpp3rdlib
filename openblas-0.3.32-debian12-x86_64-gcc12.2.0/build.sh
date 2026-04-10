git clone https://github.com/OpenMathLib/OpenBLAS.git
cd OpenBLAS
git checkout v0.3.32
mkdir build && cd build
cmake \
    -DCMAKE_INSTALL_PREFIX=openblas_install \
    -DBUILD_SHARED_LIBS=OFF \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
    -DDYNAMIC_ARCH=ON \
    -DBUILD_WITHOUT_LAPACK=OFF \
  ..
make -j$(nproc)
make install
mv openblas_install/ ../..
cd ../..
rm -rf OpenBLAS
mv openblas_install openblas