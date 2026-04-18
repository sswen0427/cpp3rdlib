git clone https://github.com/nlohmann/json.git
cd json
git checkout v3.12.0
mkdir build && cd build
cmake \
  -DCMAKE_INSTALL_PREFIX=json_install \
  ..
make -j$(nproc)
make install
mv json_install ../..
cd ../..
rm -rf json