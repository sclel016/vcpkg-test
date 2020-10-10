# vcpkg-test
A very simple example on how to leverage `vcpkg` and `cmake` to setup a build environment with external dependencies.

This build system works by having `cmake` fetch the `vcpkg` repository at configure time and call the bootstrap script. After the initial configuration, the `vcpkg.json` manifest file is parsed to bring in any declared dependencies. These dependencies are then added to the `cmake` build using the usual `find_package()` method.
