#!/bin/bash

## build script tested on OS-X

#PYTHON=python2.7

# export CPPFLAGS=-D__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES=1 ${CPPFLAGS}
# export CFLAGS=-stdlib=libc++ ${CFLAGS}
# export CXXFLAGS=-stdlib=libc++ ${CXXFLAGS}
# export LDLAGS=-stdlib=libc++ ${LDFLAGS}

export CPPFLAGS=-D__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES=1
export CFLAGS=-stdlib=libc++ -mmacosx-version-min=10.12
export CXXFLAGS=-stdlib=libc++ -mmacosx-version-min=10.12
export LDLAGS=-stdlib=libc++ -mmacosx-version-min=10.12

cd wxPython
$PYTHON build-wxpython.py --prefix=$PREFIX --build_dir=../bld --osx_cocoa --install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
