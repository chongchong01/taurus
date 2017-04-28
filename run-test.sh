#!/bin/sh -xe

mkdir -p build/test

python -m nose tests \
    --exclude-dir=tests/apiritif \
    --with-xunit --xunit-file=build/xunit.xml \
    -v || echo Tests failed

python setup.py clean sdist

