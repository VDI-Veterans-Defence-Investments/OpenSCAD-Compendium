
################################################################################
################################################################################
##      THIS FILE HAS BEEN GENERATED, CHANGES WILL LIKELY BE OVERRIDDEN.      ##
##----------------------------------------------------------------------------##
## begin                            makefile                            begin ##
##----------------------------------------------------------------------------##
##           build_v1.0/scopes/library_scope2.scad --> png --> eps            ##
################################################################################
################################################################################
# makefile created:                               Thu Sep 11 16:56:07 PDT 2025 #
# on system:                                                             Linux #
# machine:                                                              x86_64 #
# host:                                                dave-precisiontower7910 #
################################################################################
                                                                              
#-------------------------------- include_copy --------------------------------#

################################################################################
# share/include/mfi/parallel_jobs.mf
################################################################################

undefine os_defined
undefine os_configured

ifdef os
  os_defined := true
else
  os := $(shell uname -s)
endif

#------------------------------------------------------------------------------#

# Linux
ifeq (${os},Linux)
  cpu_cnt := $(shell nproc)
  os_configured := true
endif

# CYGWIN - compare prefix only (ie: CYGWIN_NT-10.0 --> CYGWIN_NT)
ifeq ($(firstword $(strip $(subst -, ,$(os)))),CYGWIN_NT)
  cpu_cnt := $(shell nproc)
  os_configured := true
endif

# FreeBSD
ifeq (${os},FreeBSD)
  cpu_cnt := $(shell sysctl -n hw.ncpu)
  os_configured := true
endif

#------------------------------------------------------------------------------#

ifdef os_configured
  ifdef verbose_make
    $(warning $(cpu_cnt) CPU's detected, configuring parallel execution --jobs=$(cpu_cnt).)
  endif

  MAKEFLAGS += --jobs=$(cpu_cnt)
  undefine os_configured
else
  $(warning OS [$(os)] not configured;)
  $(warning see file [$${__LIB_PATH__}/include/mfi/parallel_jobs.mf])
endif

ifdef os_defined
  undefine os_defined
else
  undefine os
endif

################################################################################
# eof
################################################################################
                                                                              
#---------------------------------- summary -----------------------------------#

################################################################################
#                              Variables Summary                               #
################################################################################
# build_v1.0/scopes/library_scope2.scad                          [source name] #
# png                                                             [target ext] #
# build_v1.0/scopes                                              [output path] #
# build_v1.0/scopes/library_scope2.makefile                    [makefile name] #
# build_v1.0/scopes/png                                      [output stempath] #
# str int views sizes                                [combination option sets] #
#-------------------------------[target depends]-------------------------------#
# build_v1.0/scopes/library_scope2.makefile                                    #
#--------------------------[image convertion targets]--------------------------#
# png2eps                           --> eps                      [output path] #
#--------------------------[image convertion options]--------------------------#
# -verbose                                                                     #
################################################################################

################################################################################
#                                Common Options                                #
################################################################################
# --preview                                                                    #
# --projection=o                                                               #
# --viewall                                                                    #
# --autocenter                                                                 #
################################################################################
                                                                              
#----------------------------------- tables -----------------------------------#

################################################################################
# 4 set(s)                    Combination Options                     4 set(s) #
################################################################################
# begin                           table [str]                            begin #
#+----------------------------------------------------------------------------+#
#  1: [_A] = [-D aux_script_str=\"A\"]                                         #
#  2: [_B] = [-D aux_script_str=\"B\"]                                         #
#  3: [_C] = [-D aux_script_str=\"C\"]                                         #
#  4: [_D] = [-D aux_script_str=\"D\"]                                         #
#+----------------------------------------------------------------------------+#
# end                              4 entries                               end #
#==============================================================================#
################################################################################
# begin                           table [int]                            begin #
#+----------------------------------------------------------------------------+#
#  1: [_2] = [-D aux_script_int=2]                                             #
#+----------------------------------------------------------------------------+#
# end                              1 entries                               end #
#==============================================================================#
################################################################################
# begin                          table [views]                           begin #
#+----------------------------------------------------------------------------+#
#  1: [_bottom] = [--camera=0,0,0,180,0,0,100]                                 #
#  2: [_diag] = [--camera=0,0,0,55,0,25,100]                                   #
#  3: [_top] = [--camera=0,0,0,0,0,0,100]                                      #
#+----------------------------------------------------------------------------+#
# end                              3 entries                               end #
#==============================================================================#
################################################################################
# begin                          table [sizes]                           begin #
#+----------------------------------------------------------------------------+#
#  1: [_320x240] = [--imgsize=320,240]                                         #
#+----------------------------------------------------------------------------+#
# end                              1 entries                               end #
#==============================================================================#
################################################################################
# 4 set(s)                   12 total combinations                    4 set(s) #
################################################################################
                                                                              
#---------------------------------- targets -----------------------------------#
                                                                              
#----------------------------------------------------------------- directories #

targetsdir_library_scope2_png = build_v1.0/scopes/png
targetsdir_library_scope2 += build_v1.0/scopes/png
targetsdir += build_v1.0/scopes/png

build_v1.0/scopes/png :
	 /bin/mkdir --parents --verbose build_v1.0/scopes/png

targetsdir_library_scope2_png2eps = build_v1.0/scopes/png2eps
targetsdir_library_scope2 += build_v1.0/scopes/png2eps
targetsdir += build_v1.0/scopes/png2eps

build_v1.0/scopes/png2eps :
	 /bin/mkdir --parents --verbose build_v1.0/scopes/png2eps
                                                                              
#--------------------------------------------------------------------- recipes #

################################################################################
# openscad                            png                         target 1.1.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_A]                                      #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.log

targets += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.log

build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__A=true -D aux_script_str=\"A\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.log

-include build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.depend

build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.1.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_A_2_bottom_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_A_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_A_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_A_2_bottom_320x240.eps : build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_A_2_bottom_320x240.png build_v1.0/scopes/png2eps/library_scope2_A_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_A_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.2.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_A]                                      #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.log

targets += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.log

build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__A=true -D aux_script_str=\"A\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.log

-include build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.depend

build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.2.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_A_2_diag_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_A_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_A_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_A_2_diag_320x240.eps : build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_A_2_diag_320x240.png build_v1.0/scopes/png2eps/library_scope2_A_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_A_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.3.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_A]                                      #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.log

targets += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_A_2_top_320x240.log

build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_A_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_A_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__A=true -D aux_script_str=\"A\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_A_2_top_320x240.log

-include build_v1.0/scopes/png/library_scope2_A_2_top_320x240.depend

build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.3.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_A_2_top_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_A_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_A_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_A_2_top_320x240.eps : build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_A_2_top_320x240.png build_v1.0/scopes/png2eps/library_scope2_A_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_A_2_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.4.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_B]                                      #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.log

targets += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.log

build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__B=true -D aux_script_str=\"B\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.log

-include build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.depend

build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.4.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_B_2_bottom_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_B_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_B_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_B_2_bottom_320x240.eps : build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_B_2_bottom_320x240.png build_v1.0/scopes/png2eps/library_scope2_B_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_B_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.5.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_B]                                      #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.log

targets += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.log

build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__B=true -D aux_script_str=\"B\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.log

-include build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.depend

build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.5.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_B_2_diag_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_B_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_B_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_B_2_diag_320x240.eps : build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_B_2_diag_320x240.png build_v1.0/scopes/png2eps/library_scope2_B_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_B_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.6.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_B]                                      #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.log

targets += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_B_2_top_320x240.log

build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_B_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_B_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__B=true -D aux_script_str=\"B\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_B_2_top_320x240.log

-include build_v1.0/scopes/png/library_scope2_B_2_top_320x240.depend

build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.6.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_B_2_top_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_B_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_B_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_B_2_top_320x240.eps : build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_B_2_top_320x240.png build_v1.0/scopes/png2eps/library_scope2_B_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_B_2_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.7.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_C]                                      #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.log

targets += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.log

build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__C=true -D aux_script_str=\"C\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.log

-include build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.depend

build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.7.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_C_2_bottom_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_C_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_C_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_C_2_bottom_320x240.eps : build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_C_2_bottom_320x240.png build_v1.0/scopes/png2eps/library_scope2_C_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_C_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.8.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_C]                                      #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.log

targets += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.log

build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__C=true -D aux_script_str=\"C\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.log

-include build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.depend

build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.8.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_C_2_diag_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_C_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_C_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_C_2_diag_320x240.eps : build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_C_2_diag_320x240.png build_v1.0/scopes/png2eps/library_scope2_C_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_C_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.9.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_C]                                      #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.log

targets += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_C_2_top_320x240.log

build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_C_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_C_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__C=true -D aux_script_str=\"C\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_C_2_top_320x240.log

-include build_v1.0/scopes/png/library_scope2_C_2_top_320x240.depend

build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                     target 1.9.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_C_2_top_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_C_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_C_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_C_2_top_320x240.eps : build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_C_2_top_320x240.png build_v1.0/scopes/png2eps/library_scope2_C_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_C_2_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.10.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_D]                                      #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.log

targets += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.log

build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__D=true -D aux_script_str=\"D\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.log

-include build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.depend

build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                    target 1.10.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_D_2_bottom_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_D_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_D_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_D_2_bottom_320x240.eps : build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_D_2_bottom_320x240.png build_v1.0/scopes/png2eps/library_scope2_D_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_D_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.11.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_D]                                      #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.log

targets += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.log

build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__D=true -D aux_script_str=\"D\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.log

-include build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.depend

build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                    target 1.11.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_D_2_diag_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_D_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_D_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_D_2_diag_320x240.eps : build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_D_2_diag_320x240.png build_v1.0/scopes/png2eps/library_scope2_D_2_diag_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_D_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.12.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                    [_D]                                      #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.time
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.depend
cleanfiles_library_scope2_png += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.log

targets_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.time
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.depend
cleanfiles_library_scope2 += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.log

targets += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/library_scope2_D_2_top_320x240.log

build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png : build_v1.0/scopes/library_scope2.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/library_scope2_D_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/library_scope2_D_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__D=true -D aux_script_str=\"D\" -D __mfs__2=true -D aux_script_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png build_v1.0/scopes/library_scope2.scad 2> build_v1.0/scopes/png/library_scope2_D_2_top_320x240.log

-include build_v1.0/scopes/png/library_scope2_D_2_top_320x240.depend

build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png : build_v1.0/scopes/library_scope2.makefile

################################################################################
# convert                         png --> eps                    target 1.12.1 #
################################################################################

targets_library_scope2_png2eps += build_v1.0/scopes/png2eps/library_scope2_D_2_top_320x240.eps
targets_library_scope2 += build_v1.0/scopes/png2eps/library_scope2_D_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/library_scope2_D_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_D_2_top_320x240.eps : build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/library_scope2_D_2_top_320x240.png build_v1.0/scopes/png2eps/library_scope2_D_2_top_320x240.eps

build_v1.0/scopes/png2eps/library_scope2_D_2_top_320x240.eps : | build_v1.0/scopes/png2eps
                                                                              
#------------------------------------ menu ------------------------------------#

.PHONY : all_library_scope2_png2eps
all_library_scope2_png2eps : ${targets_library_scope2_png2eps}

.PHONY : echo_all_library_scope2_png2eps
echo_all_library_scope2_png2eps :
	 @echo "${targetsdir_library_scope2_png2eps} ${targets_library_scope2_png2eps} ${cleanfiles_library_scope2_png2eps}"

.PHONY : echo_targetsdir_library_scope2_png2eps
echo_targetsdir_library_scope2_png2eps :
	 @echo "${targetsdir_library_scope2_png2eps}"

.PHONY : echo_targets_library_scope2_png2eps
echo_targets_library_scope2_png2eps :
	 @echo "${targets_library_scope2_png2eps}"

.PHONY : echo_cleanfiles_library_scope2_png2eps
echo_cleanfiles_library_scope2_png2eps :
	 @echo "${cleanfiles_library_scope2_png2eps}"

.PHONY : list_all_library_scope2_png2eps
list_all_library_scope2_png2eps :
	 @echo ; echo "# [ targetsdir_library_scope2_png2eps ] ($(words ${targetsdir_library_scope2_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope2_png2eps},echo ${v};)
	 @echo ; echo "# [ targets_library_scope2_png2eps ] ($(words ${targets_library_scope2_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope2_png2eps},echo ${v};)
	 @echo ; echo "# [ cleanfiles_library_scope2_png2eps ] ($(words ${cleanfiles_library_scope2_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope2_png2eps},echo ${v};)

.PHONY : list_targetsdir_library_scope2_png2eps
list_targetsdir_library_scope2_png2eps :
	 @echo ; echo "# [ targetsdir_library_scope2_png2eps ] ($(words ${targetsdir_library_scope2_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope2_png2eps},echo ${v};)

.PHONY : list_targets_library_scope2_png2eps
list_targets_library_scope2_png2eps :
	 @echo ; echo "# [ targets_library_scope2_png2eps ] ($(words ${targets_library_scope2_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope2_png2eps},echo ${v};)

.PHONY : list_cleanfiles_library_scope2_png2eps
list_cleanfiles_library_scope2_png2eps :
	 @echo ; echo "# [ cleanfiles_library_scope2_png2eps ] ($(words ${cleanfiles_library_scope2_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope2_png2eps},echo ${v};)

.PHONY : clean_library_scope2_png2eps
clean_library_scope2_png2eps :
	 -$(foreach v,${targets_library_scope2_png2eps}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_library_scope2_png2eps}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_library_scope2_png2eps}, /bin/rmdir --verbose ${v};)

.PHONY : all_library_scope2_png
all_library_scope2_png : ${targets_library_scope2_png}

.PHONY : echo_all_library_scope2_png
echo_all_library_scope2_png :
	 @echo "${targetsdir_library_scope2_png} ${targets_library_scope2_png} ${cleanfiles_library_scope2_png}"

.PHONY : echo_targetsdir_library_scope2_png
echo_targetsdir_library_scope2_png :
	 @echo "${targetsdir_library_scope2_png}"

.PHONY : echo_targets_library_scope2_png
echo_targets_library_scope2_png :
	 @echo "${targets_library_scope2_png}"

.PHONY : echo_cleanfiles_library_scope2_png
echo_cleanfiles_library_scope2_png :
	 @echo "${cleanfiles_library_scope2_png}"

.PHONY : list_all_library_scope2_png
list_all_library_scope2_png :
	 @echo ; echo "# [ targetsdir_library_scope2_png ] ($(words ${targetsdir_library_scope2_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope2_png},echo ${v};)
	 @echo ; echo "# [ targets_library_scope2_png ] ($(words ${targets_library_scope2_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope2_png},echo ${v};)
	 @echo ; echo "# [ cleanfiles_library_scope2_png ] ($(words ${cleanfiles_library_scope2_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope2_png},echo ${v};)

.PHONY : list_targetsdir_library_scope2_png
list_targetsdir_library_scope2_png :
	 @echo ; echo "# [ targetsdir_library_scope2_png ] ($(words ${targetsdir_library_scope2_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope2_png},echo ${v};)

.PHONY : list_targets_library_scope2_png
list_targets_library_scope2_png :
	 @echo ; echo "# [ targets_library_scope2_png ] ($(words ${targets_library_scope2_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope2_png},echo ${v};)

.PHONY : list_cleanfiles_library_scope2_png
list_cleanfiles_library_scope2_png :
	 @echo ; echo "# [ cleanfiles_library_scope2_png ] ($(words ${cleanfiles_library_scope2_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope2_png},echo ${v};)

.PHONY : clean_library_scope2_png
clean_library_scope2_png :
	 -$(foreach v,${targets_library_scope2_png}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_library_scope2_png}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_library_scope2_png}, /bin/rmdir --verbose ${v};)

.PHONY : all_library_scope2
all_library_scope2 : ${targets_library_scope2}

.PHONY : echo_all_library_scope2
echo_all_library_scope2 :
	 @echo "${targetsdir_library_scope2} ${targets_library_scope2} ${cleanfiles_library_scope2}"

.PHONY : echo_targetsdir_library_scope2
echo_targetsdir_library_scope2 :
	 @echo "${targetsdir_library_scope2}"

.PHONY : echo_targets_library_scope2
echo_targets_library_scope2 :
	 @echo "${targets_library_scope2}"

.PHONY : echo_cleanfiles_library_scope2
echo_cleanfiles_library_scope2 :
	 @echo "${cleanfiles_library_scope2}"

.PHONY : list_all_library_scope2
list_all_library_scope2 :
	 @echo ; echo "# [ targetsdir_library_scope2 ] ($(words ${targetsdir_library_scope2}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope2},echo ${v};)
	 @echo ; echo "# [ targets_library_scope2 ] ($(words ${targets_library_scope2}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope2},echo ${v};)
	 @echo ; echo "# [ cleanfiles_library_scope2 ] ($(words ${cleanfiles_library_scope2}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope2},echo ${v};)

.PHONY : list_targetsdir_library_scope2
list_targetsdir_library_scope2 :
	 @echo ; echo "# [ targetsdir_library_scope2 ] ($(words ${targetsdir_library_scope2}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope2},echo ${v};)

.PHONY : list_targets_library_scope2
list_targets_library_scope2 :
	 @echo ; echo "# [ targets_library_scope2 ] ($(words ${targets_library_scope2}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope2},echo ${v};)

.PHONY : list_cleanfiles_library_scope2
list_cleanfiles_library_scope2 :
	 @echo ; echo "# [ cleanfiles_library_scope2 ] ($(words ${cleanfiles_library_scope2}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope2},echo ${v};)

.PHONY : clean_library_scope2
clean_library_scope2 :
	 -$(foreach v,${targets_library_scope2}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_library_scope2}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_library_scope2}, /bin/rmdir --verbose ${v};)

.PHONY : all
all : ${targets}

.PHONY : echo_all
echo_all :
	 @echo "${targetsdir} ${targets} ${cleanfiles}"

.PHONY : echo_targetsdir
echo_targetsdir :
	 @echo "${targetsdir}"

.PHONY : echo_targets
echo_targets :
	 @echo "${targets}"

.PHONY : echo_cleanfiles
echo_cleanfiles :
	 @echo "${cleanfiles}"

.PHONY : list_all
list_all :
	 @echo ; echo "# [ targetsdir ] ($(words ${targetsdir}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir},echo ${v};)
	 @echo ; echo "# [ targets ] ($(words ${targets}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets},echo ${v};)
	 @echo ; echo "# [ cleanfiles ] ($(words ${cleanfiles}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles},echo ${v};)

.PHONY : list_targetsdir
list_targetsdir :
	 @echo ; echo "# [ targetsdir ] ($(words ${targetsdir}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir},echo ${v};)

.PHONY : list_targets
list_targets :
	 @echo ; echo "# [ targets ] ($(words ${targets}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets},echo ${v};)

.PHONY : list_cleanfiles
list_cleanfiles :
	 @echo ; echo "# [ cleanfiles ] ($(words ${cleanfiles}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles},echo ${v};)

.PHONY : clean
clean :
	 -$(foreach v,${targets}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir}, /bin/rmdir --verbose ${v};)
                                                                              
#-------------------------------- end_makefile --------------------------------#

################################################################################
################################################################################
##----------------------------------------------------------------------------##
## end                              makefile                              end ##
##----------------------------------------------------------------------------##
##           build_v1.0/scopes/library_scope2.scad --> png --> eps            ##
################################################################################
################################################################################
