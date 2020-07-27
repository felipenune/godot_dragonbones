#!/bin/bash

# TODO: Change these to export templates commands.

# windows
/usr/local/bin/scons -j8 platform=windows target=release_debug bits=32 use_lto=yes
/usr/local/bin/scons -j8 platform=windows target=release_debug bits=64 use_lto=yes

# x11
/usr/local/bin/scons -j8 platform=x11 target=release_debug bits=32 use_lto=yes
/usr/local/bin/scons -j8 platform=x11 target=release_debug bits=64 use_lto=yes

#osx
/usr/local/bin/scons -j8 platform=osx target=release_debug use_lto=yes osxcross_sdk=darwin19

# android

# iphone

# HTML5


# Copy all builds to builds directory
cp -avr ./bin/. /build