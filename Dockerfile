# Use Debian as the base image
FROM debian:10.3 AS builder

# Install required packages for building
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    qemu-user-static \
    g++-arm-linux-gnueabihf \
    g++\
    && rm -rf /var/lib/apt/lists/*


# Set the entry point to an interactive shell
CMD ["/bin/bash"]
