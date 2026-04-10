# Step1: Download the boost source code https://archives.boost.io/release/1.90.0/source/boost_1_90_0.tar.gz

./bootstrap.sh --prefix="xxx/cpp3rdlib/boost"

./b2 install \
    variant=release \
    link=static \
    threading=multi \
    cxxflags="-fPIC" \
    -j$(nproc)
