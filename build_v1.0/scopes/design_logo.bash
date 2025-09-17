#!/usr/bin/bash
# 
# THIS FILE HAS BEEN GENERATED, CHANGES WILL LIKELY BE OVERWRITTEN
# 
#     package: openscad-amu
#     version: v3.5
#  bug report: royasutton@hotmail.com
#    site url: https://royasutton.github.io/openscad-amu
# 
#  input file: design.scad
# output file: build_v1.0/scopes/design_logo.bash (this file)
# 
__VERBOSE__=true
__LIB_PATH__="/usr/local/share/openscad-amu/v3.5" && source "${__LIB_PATH__}/include/mfs_library/amu_mfs_init.bash" || exit 1
__PREFIX__="build_v1.0/scopes"
__SOURCE_FILE__="design.scad"
__SCOPE_FILE__="build_v1.0/scopes/design_logo.scad"
__MAKE_FILE__="build_v1.0/scopes/design_logo.makefile"
__AMU_INCLUDE_PATH__="/usr/local/share/openscad-amu/v3.5/include/mfi"
sc_openscad=/usr/bin/openscad
defines name "str" define "design_str" strings "logo"
views name "views" translate "650,180,50" distance "1700" Views "top"
images name "sizes" aspect "4:1" xsizes "200"
variables set_makefile "${__MAKE_FILE__}" add_depend "${__MAKE_FILE__}" set_source "${__SOURCE_FILE__}" set_prefix "${__PREFIX__}" set_ext "png" set_convert_exts "eps" set_convert_opts "-verbose" set_opts "--preview --projection=p" set_opts_combine "str views sizes"
script begin_makefile summary tables targets menu end_makefile

# 
# EOF
# 
