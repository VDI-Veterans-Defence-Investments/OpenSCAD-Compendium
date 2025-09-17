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
# output file: build_v1.0/scopes/design_scope1.bash (this file)
# 
__VERBOSE__=true
__LIB_PATH__="/usr/local/share/openscad-amu/v3.5" && source "${__LIB_PATH__}/include/mfs_library/amu_mfs_init.bash" || exit 1
__PREFIX__="build_v1.0/scopes"
__SOURCE_FILE__="design.scad"
__SCOPE_FILE__="build_v1.0/scopes/design_scope1.scad"
__MAKE_FILE__="build_v1.0/scopes/design_scope1.makefile"
__AMU_INCLUDE_PATH__="/usr/local/share/openscad-amu/v3.5/include/mfi"
sc_openscad=/usr/bin/openscad
defines name "str" define "design_str" strings "v10 v11 v12"
defines name "int" define "design_int" integers "1 2"
views name "views" distance "100" views "top bottom diag"
images name "sizes" aspect "4:3" wsizes "320"
variables set_makefile "${__MAKE_FILE__}" add_depend "${__MAKE_FILE__}" set_source "${__SOURCE_FILE__}" set_prefix "${__PREFIX__}" set_ext "png" set_convert_exts "eps" set_convert_opts "-verbose" set_opts "--preview --projection=o --viewall --autocenter" set_opts_combine "str int views sizes"
script begin_makefile_new include_copy "${__AMU_INCLUDE_PATH__}/parallel_jobs.mk" summary tables targets menu_ext end_makefile
variables set_ext "stl" clear_convert set_opts "--render" set_opts_combine "str int"
script begin_makefile_append summary tables targets menu_ext menu_src menu_all end_makefile

# 
# EOF
# 
