mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/BeagleBoneBlack.cmake ..
make