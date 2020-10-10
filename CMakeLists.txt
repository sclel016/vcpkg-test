
include(external/vcpkg.cmake)

project(TestVcPkg)
cmake_minimum_required(VERSION 3.14)

find_package(blaze CONFIG REQUIRED)
find_package(fmt REQUIRED)

add_executable(main test/main.cpp)    
target_link_libraries(main PRIVATE blaze::blaze)