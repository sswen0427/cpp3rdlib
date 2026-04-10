git clone https://github.com/google/sentencepiece.git
cd sentencepiece
git checkout v0.2.1
mkdir build && cd build
cmake \
  -DCMAKE_INSTALL_PREFIX=sentencepiece_install \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  ..
make -j$(nproc)
make install
mv sentencepiece_install ../../
cd ../..
rm -rf sentencepiece
mv sentencepiece_install sentencepiece