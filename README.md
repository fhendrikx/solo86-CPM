# CPM-86 for Solo

This repository contains the code and tools required to build CPM-86 for Solo.

PLEASE NOTE: this repository contains on-going work and should NOT be considered final. In particular, the BIOS layer has not yet been implemented.


## Building CPM-86

### What tools do I need to build CPM-86?

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

Build the CPM kernel:

    make

Build the disk images:

    make dist


## Credits

Thanks to tsupplis for his [CPM86 kernel](https://github.com/tsupplis/cpm86-kernel) work. This repository borrows the base image and pre-compiled CPM binaries from his repository.

