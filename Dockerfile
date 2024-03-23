# Arm and Debian Image
FROM arm32v7/debian:10.3

# Cross-compiling pacakges for arm
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    g++-arm-linux-gnueabihf \
    && rm -rf /var/lib/apt/lists/*

# Set the entry point to an interactive shell
CMD ["/bin/bash"]