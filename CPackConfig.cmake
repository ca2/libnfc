# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_FREEBSD "")
SET(CPACK_BINARY_IFW "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_PRODUCTBUILD "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TXZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_BUILD_SOURCE_DIRS "C:/eco/libnfc;C:/eco/time/Win32/basis")
SET(CPACK_CMAKE_GENERATOR "Visual Studio 15 2017")
SET(CPACK_COMPONENTS_ALL "Unspecified;examples;headers;libraries;utils")
SET(CPACK_COMPONENT_EXAMPLES_DEPENDS "libraries")
SET(CPACK_COMPONENT_EXAMPLES_DISPLAY_NAME "Example Applications")
SET(CPACK_COMPONENT_HEADERS_DEPENDS "libraries")
SET(CPACK_COMPONENT_HEADERS_DISABLED "TRUE")
SET(CPACK_COMPONENT_HEADERS_DISPLAY_NAME "Development Headers")
SET(CPACK_COMPONENT_LIBRARIES_DISPLAY_NAME "NFC Library")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "ZIP")
SET(CPACK_INSTALL_CMAKE_PROJECTS "C:/eco/time/Win32/basis;libnfc;ALL;/")
SET(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/libnfc")
SET(CPACK_MODULE_PATH "C:/eco/libnfc/cmake/modules/")
SET(CPACK_NSIS_DISPLAY_NAME "libnfc")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "libnfc")
SET(CPACK_OUTPUT_CONFIG_FILE "C:/eco/time/Win32/basis/CPackConfig.cmake")
SET(CPACK_PACKAGE_CONTACT "Roel Verdult <roel@libnfc.org>")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "C:/eco/libnfc/README-Windows.md")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Near Field Communication (NFC) library")
SET(CPACK_PACKAGE_FILE_NAME "libnfc-1.7.1-win32")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "libnfc")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "libnfc")
SET(CPACK_PACKAGE_NAME "libnfc")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "Roel Verdult")
SET(CPACK_PACKAGE_VERSION "1.7.1")
SET(CPACK_PACKAGE_VERSION_MAJOR "1")
SET(CPACK_PACKAGE_VERSION_MINOR "7")
SET(CPACK_PACKAGE_VERSION_PATCH "1")
SET(CPACK_RESOURCE_FILE_LICENSE "C:/eco/libnfc/COPYING")
SET(CPACK_RESOURCE_FILE_README "C:/Program Files/CMake/share/cmake-3.10/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.10/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "ZIP")
SET(CPACK_SOURCE_IGNORE_FILES "~$;/\\.git/;bin/")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/eco/time/Win32/basis/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "libnfc-1.7.1")
SET(CPACK_SOURCE_RPM "")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TXZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "")
SET(CPACK_SYSTEM_NAME "win32")
SET(CPACK_TOPLEVEL_TAG "win32")
SET(CPACK_WIX_SIZEOF_VOID_P "4")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/eco/time/Win32/basis/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
