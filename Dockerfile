# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Python 3 and dependencies
RUN apt-get update && apt-get install -y \
    nanopb \
    python3 \
    python3-mako \
    git

# Clone nanopb repository
RUN git clone https://github.com/nanopb/nanopb.git /workdir/nanopb/

# Copy down the necessary files
COPY genlib.py etherbuf.proto.mako etherbuf.h.mako /workdir/

WORKDIR /workdir/

# Generate the library
RUN python3 genlib.py

# Copy the output files
RUN mkdir /out/
RUN cp /workdir/etherbuf.h /out/
RUN cp /workdir/etherbuf.pb.h /out/
RUN cp /workdir/etherbuf.pb.c /out/