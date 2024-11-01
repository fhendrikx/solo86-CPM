# CPM-86 for Solo

This repository contains the code and tools required to build CPM-86 Kernel for Solo.


## Building CPM-86 Kernel

### What tools do I need to build CPM-86 Kernel?

You'll need to install the following:
- gcc
- make
- libncursesdev


### Building CPM-86 Cross-Compiler

Load the environment for building:

    source env.sh

Buld the cross compiler first:

    cd cross
    make


### Building CPM-86

Load the environment for building:

    source env.sh

Build the kernel:

    make

