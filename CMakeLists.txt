# Copyright (C) 2007-2009 LuaDist.
# Submitted by David Manura
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

PROJECT(luagd C)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
INCLUDE(dist.cmake)

#~2DO autoconf
ADD_DEFINITIONS(-DGD_JPEG -DGD_PNG)
#~2DO FIX: -DGD_GIF -DGD_FONTCONFIG -DGD_XPM -DGD_FREETYPE 

# Find gd
FIND_LIBRARY ( GD_LIBRARY NAMES gd bgd)

# Build
ADD_LUA_MODULE(gd luagd.c luagd.def)
TARGET_LINK_LIBRARIES(gd ${GD_LIBRARY})

# Install all files and documentation
INSTALL (TARGETS gd DESTINATION ${INSTALL_CMOD})
INSTALL (FILES README COPYING DESTINATION ${INSTALL_DATA})
INSTALL (DIRECTORY demos/ DESTINATION ${INSTALL_EXAMPLE})
INSTALL (DIRECTORY doc/ DESTINATION ${INSTALL_DOC})

