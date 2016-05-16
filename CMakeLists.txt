project(game.libretro.quicknes)

cmake_minimum_required(VERSION 2.6)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR})

enable_language(CXX)

find_package(Kodi REQUIRED)
find_package(libretro-quicknes REQUIRED)

set(DEPLIBS quicknes)
set(QUICKNES_CUSTOM_BINARY ${QUICKNES_LIB}
                           game.libretro.quicknes${CMAKE_SHARED_LIBRARY_SUFFIX} quicknes)

build_addon(game.libretro.quicknes QUICKNES DEPLIBS)
