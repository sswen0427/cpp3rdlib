git clone https://gitlab.com/conradsnicta/armadillo-code.git
cd armadillo-code
git checkout 15.2.4
mkdir build && cd build
cmake \
    -DCMAKE_INSTALL_PREFIX=armadillo_install \
    -DBUILD_SHARED_LIBS=OFF \
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
    -Dopenblas_LIBRARY="xxx/cpp3rdlib/openblas-0.3.32-debian12-x86_64-gcc12.2.0/lib64/libopenblas.a" \
  ..
make -j$(nproc)
make install
mv armadillo_install/ ../..
cd ../..
rm -rf armadillo-code
mv armadillo_install/ armadillo