if(NOT CMAKE_CROSSCOMPILING)
  find_package(PkgConfig QUIET)
  pkg_check_modules(PC_MINIUPNPC miniupnpc)
endif()

set_extra_dirs_lib(MINIUPNPC miniupnpc)
find_library(MINIUPNPC_LIBRARY
  NAMES miniupnpc 
  HINTS ${HINTS_MINIUPNPC_LIBDIR} ${PC_MINIUPNPC_LIBDIR} ${PC_MINIUPNPC_LIBRARY_DIRS}
  PATHS ${PATHS_MINIUPNPC_LIBDIR}
  ${CROSSCOMPILING_NO_CMAKE_SYSTEM_PATH}
)
set_extra_dirs_include(MINIUPNPC miniupnpc "${MINIUPNPC_LIBRARY}")
find_path(MINIUPNPC_INCLUDEDIR miniupnpc.h 
  PATH_SUFFIXES miniupnpc 
  HINTS ${HINTS_MINIUPNPC_INCLUDEDIR} ${PC_MINIUPNPC_INCLUDEDIR} ${PC_MINIUPNPC_INCLUDE_DIRS}
  PATHS ${PATHS_MINIUPNPC_INCLUDEDIR}
  ${CROSSCOMPILING_NO_CMAKE_SYSTEM_PATH}
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Miniupnpc DEFAULT_MSG MINIUPNPC_INCLUDEDIR)

mark_as_advanced(MINIUPNPC_INCLUDEDIR MINIUPNPC_LIBRARY)

if(MINIUPNPC_FOUND)
  set(MINIUPNPC_INCLUDE_DIRS ${MINIUPNPC_INCLUDEDIR})
  if(MINIUPNPC_LIBRARY)
    set(MINIUPNPC_LIBRARIES ${MINIUPNPC_LIBRARY})
  else()
    set(MINIUPNPC_LIBRARIES)
  endif()
endif()
