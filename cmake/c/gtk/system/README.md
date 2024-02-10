# Hello Gtk2

This is a "Hello World" example of a GUI using Gtk version 2.
Gtk is Linux only.

## Requirements

- CMake
- gcc
- conan

## Build

```shell
conan install . --output-folder=build --build=missing
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .
./hello
```

## See

[Gtk hello world](https://www.gtk.org/docs/getting-started/hello-world)
