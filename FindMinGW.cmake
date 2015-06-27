# - Try to find MinGW
# Once done this will define
#
# MINGW_FOUND - system has MinGW
# MINGW_INCLUDE_DIRS - the MinGW include directories
# MINGW_MAKE - path to MinGW's make executable

set(MINGW_PATH_SUFFIX mingw)

# try to find _mingw.h
find_path(MINGW_INCLUDE_DIRS _mingw.h PATH_SUFFIXES ${MINGW_PATH_SUFFIX} ${MINGW_PATH_SUFFIX}/include)

# try to find mingw32-make
find_program(MINGW_MAKE NAMES mingw32-make.bat mingw32-make.exe PATH_SUFFIXES ${MINGW_PATH_SUFFIX} ${MINGW_PATH_SUFFIX}/bin)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MinGW DEFAULT_MSG MINGW_INCLUDE_DIRS MINGW_MAKE)

mark_as_advanced(MINGW_INCLUDE_DIRS MINGW_MAKE)
