#!/usr/bin/bash
# 
# THIS FILE HAS BEEN GENERATED, CHANGES WILL LIKELY BE OVERWRITTEN
# 
#     package: openscad-amu
#     version: v3.5
#  bug report: royasutton@hotmail.com
#    site url: https://royasutton.github.io/openscad-amu
# 
#  input file: library.scad
# output file: build_v1.0/scopes/library_scope2.bash (this file)
# 
__VERBOSE__=true
__LIB_PATH__="/usr/local/share/openscad-amu/v3.5" && source "${__LIB_PATH__}/include/mfs_library/amu_mfs_init.bash" || exit 1
__PREFIX__="build_v1.0/scopes"
__SOURCE_FILE__="library.scad"
__SCOPE_FILE__="build_v1.0/scopes/library_scope2.scad"
__MAKE_FILE__="build_v1.0/scopes/library_scope2.makefile"
__AMU_INCLUDE_PATH__="/usr/local/share/openscad-amu/v3.5/include/mfi"
sc_openscad=/usr/bin/openscad
defines name "str" define "aux_script_str" strings "A B C D"
defines name "int" define "aux_script_int" integers "2"
views name "views" distance "100" views "top bottom diag"
images name "sizes" aspect "4:3" wsizes "320"
variables set_makefile "${__MAKE_FILE__}" add_depend "${__MAKE_FILE__}" set_source "${__SCOPE_FILE__}" set_prefix "${__PREFIX__}" set_ext "png" set_convert_exts "eps" set_convert_opts "-verbose" set_opts "--preview --projection=o --viewall --autocenter" set_opts_combine "str int views sizes"
script begin_makefile_new include_copy "${__AMU_INCLUDE_PATH__}/parallel_jobs.mk" summary tables targets menu end_makefile

# 
# EOF
# 
