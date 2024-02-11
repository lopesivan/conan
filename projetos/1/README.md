# projeto

Create your first Conan package.

## Cria projeto

    conan new cmake_lib -d name=hello -d version=1.0

## build

    conan create .

## build debug

    conan create . -s build_type=Debug

## build release

    conan create . -o hello/1.0:shared=True

## lista informação

    conan list hello/1.0#:\*"
