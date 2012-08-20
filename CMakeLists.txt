# Copyright (C) 2007-2012 LuaDist.
# Created by David Manura, Peter Drahoš
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( luagd C )
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
include ( lua )

#~2DO autoconf
add_definitions ( -DGD_JPEG -DGD_PNG )
#~2DO FIX: -DGD_GIF -DGD_FONTCONFIG -DGD_XPM -DGD_FREETYPE 

# Find gd
find_library ( GD_LIBRARY NAMES gd bgd )

# Build
install_lua_module ( gd luagd.c luagd.def LINK ${GD_LIBRARY} )

# Install all files and documentation
install_data ( README COPYING )
install_example ( demos/ )
install_doc ( doc/ )

