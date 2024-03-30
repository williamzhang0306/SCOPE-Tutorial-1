# CMake toolchain file for BeagleBone Black (ARM architecture)

# Specify the cross compiler
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR arm)

# Set the path to the cross compiler
SET(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)

# Specify the root file system path for BeagleBone Black
SET(CMAKE_FIND_ROOT_PATH /path/to/beaglebone/rootfs)

# Add the cross-compiled libraries and headers to the search paths
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Additional settings if needed
# SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# Specify the target architecture
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=armv7-a -mfpu=neon -mfloat-abi=hard")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv7-a -mfpu=neon -mfloat-abi=hard")

# Optional: Set other compiler/linker flags as needed

# Set the default install prefix to the BeagleBone root filesystem
SET(CMAKE_INSTALL_PREFIX /inner/install_dir)

# Specify the target platform information
SET(CMAKE_SYSTEM_VERSION 1)

# Specify other settings as needed

# End of the toolchain file
