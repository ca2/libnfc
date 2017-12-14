INCLUDE(BundleUtilities)

# set bundle to the full path of the executable already existing in the install tree
SET(bundle "${CMAKE_INSTALL_PREFIX}/bin/nfc-list.exe")

# set other_libs to a list of additional libs that cannot be reached by dependency analysis
SET(other_libs "")

SET(dirs "C:/Program Files/LibUSB-Win32/bin/x86/")

fixup_bundle("${bundle}" "${other_libs}" "${dirs}")
