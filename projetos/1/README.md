# projeto

## Cria projeto
conan new cmake_lib -d name=hello -d version=1.0

## build
conan create .

## build
conan create . -s build_type=Debug

## build
conan create . -o hello/1.0:shared=True

