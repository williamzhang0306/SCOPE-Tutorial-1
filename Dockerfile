# Use a base image with the desired ARM architecture and Debian as the base OS
FROM arm32v7/debian:10.3

# Install necessary packages for cross-compiling
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    g++-arm-linux-gnueabihf \
    && rm -rf /var/lib/apt/lists/*

# # Set the cross-compilation environment variables
# ENV CC=arm-linux-gnueabihf-gcc \
#     CXX=arm-linux-gnueabihf-g++

# # Create and set the working directory
# WORKDIR /app

# # Copy the CMakeLists.txt and source code into the container
# COPY CMakeLists.txt /app/
# COPY src /app/src

# # Run cmake to generate Makefiles
# RUN cmake .

# # Build the C++ code
# RUN make

# Set the entry point to an interactive shell
CMD ["/bin/bash"]