#!/bin/bash

set -e

make autotools

sed -i 's/linux-musl\*/rs64-musl\*/g' ./config.sub

./configure --host=x86_64-rs64-musl --without-numa --without-tirpc --without-modules
