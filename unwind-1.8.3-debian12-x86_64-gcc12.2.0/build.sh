sudo apt-get update
sudo apt-get install autoconf automake libtool pkg-config
git clone https://github.com/libunwind/libunwind.git
cd libunwind
git checkout v1.8.3
autoreconf -i -f
INSTALL_DIR="$(pwd)/../unwind"
./configure --prefix="${INSTALL_DIR}" --enable-shared
make -j$(nproc)
make install
cd ..
rm -rf libunwind