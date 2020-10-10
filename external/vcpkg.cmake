include(FetchContent)

if(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/external/vcpkg)
    file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/external/vcpkg)
endif()
FetchContent_Declare(
  vcpkg
  GIT_REPOSITORY    https://github.com/microsoft/vcpkg.git
  SOURCE_DIR        ${CMAKE_CURRENT_SOURCE_DIR}/external/vcpkg
)

FetchContent_GetProperties(vcpkg)

if(NOT vcpkg_POPULATED)
  FetchContent_Populate(vcpkg)
  execute_process(COMMAND ./${CMAKE_CURRENT_SOURCE_DIR}/external/vcpkg/bootstrap-vcpkg.sh)
endif()

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/external/vcpkg/scripts/buildsystems/vcpkg.cmake
CACHE STRING "Vcpkg toolchain file")