git clone https://github.com/martinus/unordered_dense.git
cd unordered_dense
git checkout v4.8.1
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=unordered_dense_install ..
cmake --build . --target install
mv unordered_dense_install/ ../..
cd ../..
rm unordered_dense -rf