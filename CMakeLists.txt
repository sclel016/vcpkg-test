option(USE_VCPKG "USE_VCPG" ON)

if(USE_VCPKG)
	include(vcpkg.cmake)
endif()

project(TestVcPkg)
cmake_minimum_required(VERSION 3.14)

find_package(blaze CONFIG REQUIRED)

add_executable(main test/main.cpp)    
target_link_libraries(main PRIVATE blaze::blaze)
