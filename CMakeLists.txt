cmake_minimum_required(VERSION 3.10)
project(YourProjectName)

# Set the C++ standard (adjust as needed)
set(CMAKE_CXX_STANDARD 11)

# Add the source and header directories
include_directories(${CMAKE_SOURCE_DIR}/src)
include_directories(${CMAKE_SOURCE_DIR}/include)

# Add executable for LED_Manager.cpp
add_executable(LED_Blink_Test src/LED_Blink_Test.cpp src/LED_Driver.cpp)

# Install the executable and the necessary files
install(TARGETS LED_Blink_Test DESTINATION bin)
install(FILES "${CMAKE_SOURCE_DIR}/include/LED_Driver.hpp" DESTINATION include)

set(CPACK_PACKAGE_NAME "YourProjectName")
set(CPACK_PACKAGE_VERSION "1.0.0")

include(CPack)