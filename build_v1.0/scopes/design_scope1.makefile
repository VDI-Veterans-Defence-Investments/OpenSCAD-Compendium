
################################################################################
################################################################################
##      THIS FILE HAS BEEN GENERATED, CHANGES WILL LIKELY BE OVERRIDDEN.      ##
##----------------------------------------------------------------------------##
## begin                            makefile                            begin ##
##----------------------------------------------------------------------------##
##                        design.scad --> png --> eps                         ##
################################################################################
################################################################################
# makefile created:                               Thu Sep 11 16:56:03 PDT 2025 #
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
# design.scad                                                    [source name] #
# png                                                             [target ext] #
# build_v1.0/scopes                                              [output path] #
# build_v1.0/scopes/design_scope1.makefile                     [makefile name] #
# build_v1.0/scopes/png                                      [output stempath] #
# str int views sizes                                [combination option sets] #
#-------------------------------[target depends]-------------------------------#
# build_v1.0/scopes/design_scope1.makefile                                     #
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
#  1: [_v10] = [-D design_str=\"v10\"]                                         #
#  2: [_v11] = [-D design_str=\"v11\"]                                         #
#  3: [_v12] = [-D design_str=\"v12\"]                                         #
#+----------------------------------------------------------------------------+#
# end                              3 entries                               end #
#==============================================================================#
################################################################################
# begin                           table [int]                            begin #
#+----------------------------------------------------------------------------+#
#  1: [_1] = [-D design_int=1]                                                 #
#  2: [_2] = [-D design_int=2]                                                 #
#+----------------------------------------------------------------------------+#
# end                              2 entries                               end #
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
# 4 set(s)                   18 total combinations                    4 set(s) #
################################################################################
                                                                              
#---------------------------------- targets -----------------------------------#
                                                                              
#----------------------------------------------------------------- directories #

targetsdir_design_png = build_v1.0/scopes/png
targetsdir_design += build_v1.0/scopes/png
targetsdir += build_v1.0/scopes/png

build_v1.0/scopes/png :
	 /bin/mkdir --parents --verbose build_v1.0/scopes/png

targetsdir_design_png2eps = build_v1.0/scopes/png2eps
targetsdir_design += build_v1.0/scopes/png2eps
targetsdir += build_v1.0/scopes/png2eps

build_v1.0/scopes/png2eps :
	 /bin/mkdir --parents --verbose build_v1.0/scopes/png2eps
                                                                              
#--------------------------------------------------------------------- recipes #

################################################################################
# openscad                            png                         target 1.1.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v10]                                     #
#                                    [_1]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v10_1_bottom_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_bottom_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_bottom_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_bottom_320x240.log

targets_design += build_v1.0/scopes/png/design_v10_1_bottom_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_bottom_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_bottom_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_bottom_320x240.log

targets += build_v1.0/scopes/png/design_v10_1_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v10_1_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v10_1_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v10_1_bottom_320x240.log

build_v1.0/scopes/png/design_v10_1_bottom_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v10_1_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v10_1_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__1=true -D design_int=1 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v10_1_bottom_320x240.png design.scad 2> build_v1.0/scopes/png/design_v10_1_bottom_320x240.log

-include build_v1.0/scopes/png/design_v10_1_bottom_320x240.depend

build_v1.0/scopes/png/design_v10_1_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v10_1_bottom_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.1.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v10_1_bottom_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v10_1_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v10_1_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v10_1_bottom_320x240.eps : build_v1.0/scopes/png/design_v10_1_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v10_1_bottom_320x240.png build_v1.0/scopes/png2eps/design_v10_1_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v10_1_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.2.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v10]                                     #
#                                    [_1]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v10_1_diag_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_diag_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_diag_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_diag_320x240.log

targets_design += build_v1.0/scopes/png/design_v10_1_diag_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_diag_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_diag_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_diag_320x240.log

targets += build_v1.0/scopes/png/design_v10_1_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v10_1_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v10_1_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v10_1_diag_320x240.log

build_v1.0/scopes/png/design_v10_1_diag_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v10_1_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v10_1_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__1=true -D design_int=1 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v10_1_diag_320x240.png design.scad 2> build_v1.0/scopes/png/design_v10_1_diag_320x240.log

-include build_v1.0/scopes/png/design_v10_1_diag_320x240.depend

build_v1.0/scopes/png/design_v10_1_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v10_1_diag_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.2.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v10_1_diag_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v10_1_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v10_1_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v10_1_diag_320x240.eps : build_v1.0/scopes/png/design_v10_1_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v10_1_diag_320x240.png build_v1.0/scopes/png2eps/design_v10_1_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v10_1_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.3.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v10]                                     #
#                                    [_1]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v10_1_top_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_top_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_top_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_1_top_320x240.log

targets_design += build_v1.0/scopes/png/design_v10_1_top_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_top_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_top_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v10_1_top_320x240.log

targets += build_v1.0/scopes/png/design_v10_1_top_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v10_1_top_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v10_1_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v10_1_top_320x240.log

build_v1.0/scopes/png/design_v10_1_top_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v10_1_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v10_1_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__1=true -D design_int=1 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v10_1_top_320x240.png design.scad 2> build_v1.0/scopes/png/design_v10_1_top_320x240.log

-include build_v1.0/scopes/png/design_v10_1_top_320x240.depend

build_v1.0/scopes/png/design_v10_1_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v10_1_top_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.3.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v10_1_top_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v10_1_top_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v10_1_top_320x240.eps

build_v1.0/scopes/png2eps/design_v10_1_top_320x240.eps : build_v1.0/scopes/png/design_v10_1_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v10_1_top_320x240.png build_v1.0/scopes/png2eps/design_v10_1_top_320x240.eps

build_v1.0/scopes/png2eps/design_v10_1_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.4.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v10]                                     #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v10_2_bottom_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_bottom_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_bottom_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_bottom_320x240.log

targets_design += build_v1.0/scopes/png/design_v10_2_bottom_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_bottom_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_bottom_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_bottom_320x240.log

targets += build_v1.0/scopes/png/design_v10_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v10_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v10_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v10_2_bottom_320x240.log

build_v1.0/scopes/png/design_v10_2_bottom_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v10_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v10_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__2=true -D design_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v10_2_bottom_320x240.png design.scad 2> build_v1.0/scopes/png/design_v10_2_bottom_320x240.log

-include build_v1.0/scopes/png/design_v10_2_bottom_320x240.depend

build_v1.0/scopes/png/design_v10_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v10_2_bottom_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.4.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v10_2_bottom_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v10_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v10_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v10_2_bottom_320x240.eps : build_v1.0/scopes/png/design_v10_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v10_2_bottom_320x240.png build_v1.0/scopes/png2eps/design_v10_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v10_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.5.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v10]                                     #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v10_2_diag_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_diag_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_diag_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_diag_320x240.log

targets_design += build_v1.0/scopes/png/design_v10_2_diag_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_diag_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_diag_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_diag_320x240.log

targets += build_v1.0/scopes/png/design_v10_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v10_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v10_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v10_2_diag_320x240.log

build_v1.0/scopes/png/design_v10_2_diag_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v10_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v10_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__2=true -D design_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v10_2_diag_320x240.png design.scad 2> build_v1.0/scopes/png/design_v10_2_diag_320x240.log

-include build_v1.0/scopes/png/design_v10_2_diag_320x240.depend

build_v1.0/scopes/png/design_v10_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v10_2_diag_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.5.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v10_2_diag_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v10_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v10_2_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v10_2_diag_320x240.eps : build_v1.0/scopes/png/design_v10_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v10_2_diag_320x240.png build_v1.0/scopes/png2eps/design_v10_2_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v10_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.6.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v10]                                     #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v10_2_top_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_top_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_top_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v10_2_top_320x240.log

targets_design += build_v1.0/scopes/png/design_v10_2_top_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_top_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_top_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v10_2_top_320x240.log

targets += build_v1.0/scopes/png/design_v10_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v10_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v10_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v10_2_top_320x240.log

build_v1.0/scopes/png/design_v10_2_top_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v10_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v10_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__2=true -D design_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v10_2_top_320x240.png design.scad 2> build_v1.0/scopes/png/design_v10_2_top_320x240.log

-include build_v1.0/scopes/png/design_v10_2_top_320x240.depend

build_v1.0/scopes/png/design_v10_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v10_2_top_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.6.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v10_2_top_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v10_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v10_2_top_320x240.eps

build_v1.0/scopes/png2eps/design_v10_2_top_320x240.eps : build_v1.0/scopes/png/design_v10_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v10_2_top_320x240.png build_v1.0/scopes/png2eps/design_v10_2_top_320x240.eps

build_v1.0/scopes/png2eps/design_v10_2_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.7.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v11]                                     #
#                                    [_1]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v11_1_bottom_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_bottom_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_bottom_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_bottom_320x240.log

targets_design += build_v1.0/scopes/png/design_v11_1_bottom_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_bottom_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_bottom_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_bottom_320x240.log

targets += build_v1.0/scopes/png/design_v11_1_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v11_1_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v11_1_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v11_1_bottom_320x240.log

build_v1.0/scopes/png/design_v11_1_bottom_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v11_1_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v11_1_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__1=true -D design_int=1 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v11_1_bottom_320x240.png design.scad 2> build_v1.0/scopes/png/design_v11_1_bottom_320x240.log

-include build_v1.0/scopes/png/design_v11_1_bottom_320x240.depend

build_v1.0/scopes/png/design_v11_1_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v11_1_bottom_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.7.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v11_1_bottom_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v11_1_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v11_1_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v11_1_bottom_320x240.eps : build_v1.0/scopes/png/design_v11_1_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v11_1_bottom_320x240.png build_v1.0/scopes/png2eps/design_v11_1_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v11_1_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.8.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v11]                                     #
#                                    [_1]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v11_1_diag_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_diag_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_diag_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_diag_320x240.log

targets_design += build_v1.0/scopes/png/design_v11_1_diag_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_diag_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_diag_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_diag_320x240.log

targets += build_v1.0/scopes/png/design_v11_1_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v11_1_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v11_1_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v11_1_diag_320x240.log

build_v1.0/scopes/png/design_v11_1_diag_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v11_1_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v11_1_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__1=true -D design_int=1 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v11_1_diag_320x240.png design.scad 2> build_v1.0/scopes/png/design_v11_1_diag_320x240.log

-include build_v1.0/scopes/png/design_v11_1_diag_320x240.depend

build_v1.0/scopes/png/design_v11_1_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v11_1_diag_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.8.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v11_1_diag_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v11_1_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v11_1_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v11_1_diag_320x240.eps : build_v1.0/scopes/png/design_v11_1_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v11_1_diag_320x240.png build_v1.0/scopes/png2eps/design_v11_1_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v11_1_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                         target 1.9.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v11]                                     #
#                                    [_1]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v11_1_top_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_top_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_top_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_1_top_320x240.log

targets_design += build_v1.0/scopes/png/design_v11_1_top_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_top_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_top_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v11_1_top_320x240.log

targets += build_v1.0/scopes/png/design_v11_1_top_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v11_1_top_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v11_1_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v11_1_top_320x240.log

build_v1.0/scopes/png/design_v11_1_top_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v11_1_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v11_1_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__1=true -D design_int=1 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v11_1_top_320x240.png design.scad 2> build_v1.0/scopes/png/design_v11_1_top_320x240.log

-include build_v1.0/scopes/png/design_v11_1_top_320x240.depend

build_v1.0/scopes/png/design_v11_1_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v11_1_top_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                     target 1.9.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v11_1_top_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v11_1_top_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v11_1_top_320x240.eps

build_v1.0/scopes/png2eps/design_v11_1_top_320x240.eps : build_v1.0/scopes/png/design_v11_1_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v11_1_top_320x240.png build_v1.0/scopes/png2eps/design_v11_1_top_320x240.eps

build_v1.0/scopes/png2eps/design_v11_1_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.10.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v11]                                     #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v11_2_bottom_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_bottom_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_bottom_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_bottom_320x240.log

targets_design += build_v1.0/scopes/png/design_v11_2_bottom_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_bottom_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_bottom_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_bottom_320x240.log

targets += build_v1.0/scopes/png/design_v11_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v11_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v11_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v11_2_bottom_320x240.log

build_v1.0/scopes/png/design_v11_2_bottom_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v11_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v11_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__2=true -D design_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v11_2_bottom_320x240.png design.scad 2> build_v1.0/scopes/png/design_v11_2_bottom_320x240.log

-include build_v1.0/scopes/png/design_v11_2_bottom_320x240.depend

build_v1.0/scopes/png/design_v11_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v11_2_bottom_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.10.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v11_2_bottom_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v11_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v11_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v11_2_bottom_320x240.eps : build_v1.0/scopes/png/design_v11_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v11_2_bottom_320x240.png build_v1.0/scopes/png2eps/design_v11_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v11_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.11.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v11]                                     #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v11_2_diag_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_diag_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_diag_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_diag_320x240.log

targets_design += build_v1.0/scopes/png/design_v11_2_diag_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_diag_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_diag_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_diag_320x240.log

targets += build_v1.0/scopes/png/design_v11_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v11_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v11_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v11_2_diag_320x240.log

build_v1.0/scopes/png/design_v11_2_diag_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v11_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v11_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__2=true -D design_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v11_2_diag_320x240.png design.scad 2> build_v1.0/scopes/png/design_v11_2_diag_320x240.log

-include build_v1.0/scopes/png/design_v11_2_diag_320x240.depend

build_v1.0/scopes/png/design_v11_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v11_2_diag_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.11.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v11_2_diag_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v11_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v11_2_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v11_2_diag_320x240.eps : build_v1.0/scopes/png/design_v11_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v11_2_diag_320x240.png build_v1.0/scopes/png2eps/design_v11_2_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v11_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.12.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v11]                                     #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v11_2_top_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_top_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_top_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v11_2_top_320x240.log

targets_design += build_v1.0/scopes/png/design_v11_2_top_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_top_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_top_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v11_2_top_320x240.log

targets += build_v1.0/scopes/png/design_v11_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v11_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v11_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v11_2_top_320x240.log

build_v1.0/scopes/png/design_v11_2_top_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v11_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v11_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__2=true -D design_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v11_2_top_320x240.png design.scad 2> build_v1.0/scopes/png/design_v11_2_top_320x240.log

-include build_v1.0/scopes/png/design_v11_2_top_320x240.depend

build_v1.0/scopes/png/design_v11_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v11_2_top_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.12.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v11_2_top_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v11_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v11_2_top_320x240.eps

build_v1.0/scopes/png2eps/design_v11_2_top_320x240.eps : build_v1.0/scopes/png/design_v11_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v11_2_top_320x240.png build_v1.0/scopes/png2eps/design_v11_2_top_320x240.eps

build_v1.0/scopes/png2eps/design_v11_2_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.13.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v12]                                     #
#                                    [_1]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v12_1_bottom_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_bottom_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_bottom_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_bottom_320x240.log

targets_design += build_v1.0/scopes/png/design_v12_1_bottom_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_bottom_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_bottom_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_bottom_320x240.log

targets += build_v1.0/scopes/png/design_v12_1_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v12_1_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v12_1_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v12_1_bottom_320x240.log

build_v1.0/scopes/png/design_v12_1_bottom_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v12_1_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v12_1_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__1=true -D design_int=1 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v12_1_bottom_320x240.png design.scad 2> build_v1.0/scopes/png/design_v12_1_bottom_320x240.log

-include build_v1.0/scopes/png/design_v12_1_bottom_320x240.depend

build_v1.0/scopes/png/design_v12_1_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v12_1_bottom_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.13.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v12_1_bottom_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v12_1_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v12_1_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v12_1_bottom_320x240.eps : build_v1.0/scopes/png/design_v12_1_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v12_1_bottom_320x240.png build_v1.0/scopes/png2eps/design_v12_1_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v12_1_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.14.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v12]                                     #
#                                    [_1]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v12_1_diag_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_diag_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_diag_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_diag_320x240.log

targets_design += build_v1.0/scopes/png/design_v12_1_diag_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_diag_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_diag_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_diag_320x240.log

targets += build_v1.0/scopes/png/design_v12_1_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v12_1_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v12_1_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v12_1_diag_320x240.log

build_v1.0/scopes/png/design_v12_1_diag_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v12_1_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v12_1_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__1=true -D design_int=1 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v12_1_diag_320x240.png design.scad 2> build_v1.0/scopes/png/design_v12_1_diag_320x240.log

-include build_v1.0/scopes/png/design_v12_1_diag_320x240.depend

build_v1.0/scopes/png/design_v12_1_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v12_1_diag_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.14.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v12_1_diag_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v12_1_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v12_1_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v12_1_diag_320x240.eps : build_v1.0/scopes/png/design_v12_1_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v12_1_diag_320x240.png build_v1.0/scopes/png2eps/design_v12_1_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v12_1_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.15.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v12]                                     #
#                                    [_1]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v12_1_top_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_top_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_top_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_1_top_320x240.log

targets_design += build_v1.0/scopes/png/design_v12_1_top_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_top_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_top_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v12_1_top_320x240.log

targets += build_v1.0/scopes/png/design_v12_1_top_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v12_1_top_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v12_1_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v12_1_top_320x240.log

build_v1.0/scopes/png/design_v12_1_top_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v12_1_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v12_1_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__1=true -D design_int=1 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v12_1_top_320x240.png design.scad 2> build_v1.0/scopes/png/design_v12_1_top_320x240.log

-include build_v1.0/scopes/png/design_v12_1_top_320x240.depend

build_v1.0/scopes/png/design_v12_1_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v12_1_top_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.15.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v12_1_top_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v12_1_top_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v12_1_top_320x240.eps

build_v1.0/scopes/png2eps/design_v12_1_top_320x240.eps : build_v1.0/scopes/png/design_v12_1_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v12_1_top_320x240.png build_v1.0/scopes/png2eps/design_v12_1_top_320x240.eps

build_v1.0/scopes/png2eps/design_v12_1_top_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.16.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v12]                                     #
#                                    [_2]                                      #
#                                  [_bottom]                                   #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v12_2_bottom_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_bottom_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_bottom_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_bottom_320x240.log

targets_design += build_v1.0/scopes/png/design_v12_2_bottom_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_bottom_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_bottom_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_bottom_320x240.log

targets += build_v1.0/scopes/png/design_v12_2_bottom_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v12_2_bottom_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v12_2_bottom_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v12_2_bottom_320x240.log

build_v1.0/scopes/png/design_v12_2_bottom_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v12_2_bottom_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v12_2_bottom_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__2=true -D design_int=2 -D __mfs__bottom=true --camera=0,0,0,180,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v12_2_bottom_320x240.png design.scad 2> build_v1.0/scopes/png/design_v12_2_bottom_320x240.log

-include build_v1.0/scopes/png/design_v12_2_bottom_320x240.depend

build_v1.0/scopes/png/design_v12_2_bottom_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v12_2_bottom_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.16.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v12_2_bottom_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v12_2_bottom_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v12_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v12_2_bottom_320x240.eps : build_v1.0/scopes/png/design_v12_2_bottom_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v12_2_bottom_320x240.png build_v1.0/scopes/png2eps/design_v12_2_bottom_320x240.eps

build_v1.0/scopes/png2eps/design_v12_2_bottom_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.17.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v12]                                     #
#                                    [_2]                                      #
#                                   [_diag]                                    #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v12_2_diag_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_diag_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_diag_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_diag_320x240.log

targets_design += build_v1.0/scopes/png/design_v12_2_diag_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_diag_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_diag_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_diag_320x240.log

targets += build_v1.0/scopes/png/design_v12_2_diag_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v12_2_diag_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v12_2_diag_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v12_2_diag_320x240.log

build_v1.0/scopes/png/design_v12_2_diag_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v12_2_diag_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v12_2_diag_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__2=true -D design_int=2 -D __mfs__diag=true --camera=0,0,0,55,0,25,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v12_2_diag_320x240.png design.scad 2> build_v1.0/scopes/png/design_v12_2_diag_320x240.log

-include build_v1.0/scopes/png/design_v12_2_diag_320x240.depend

build_v1.0/scopes/png/design_v12_2_diag_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v12_2_diag_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.17.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v12_2_diag_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v12_2_diag_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v12_2_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v12_2_diag_320x240.eps : build_v1.0/scopes/png/design_v12_2_diag_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v12_2_diag_320x240.png build_v1.0/scopes/png2eps/design_v12_2_diag_320x240.eps

build_v1.0/scopes/png2eps/design_v12_2_diag_320x240.eps : | build_v1.0/scopes/png2eps

################################################################################
# openscad                            png                        target 1.18.0 #
#==============================================================================#
#                                   4-tuple                                    #
#                                   [_v12]                                     #
#                                    [_2]                                      #
#                                   [_top]                                     #
#                                 [_320x240]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_v12_2_top_320x240.png
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_top_320x240.time
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_top_320x240.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_v12_2_top_320x240.log

targets_design += build_v1.0/scopes/png/design_v12_2_top_320x240.png
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_top_320x240.time
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_top_320x240.depend
cleanfiles_design += build_v1.0/scopes/png/design_v12_2_top_320x240.log

targets += build_v1.0/scopes/png/design_v12_2_top_320x240.png
cleanfiles += build_v1.0/scopes/png/design_v12_2_top_320x240.time
cleanfiles += build_v1.0/scopes/png/design_v12_2_top_320x240.depend
cleanfiles += build_v1.0/scopes/png/design_v12_2_top_320x240.log

build_v1.0/scopes/png/design_v12_2_top_320x240.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_v12_2_top_320x240.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_v12_2_top_320x240.depend --preview --projection=o --viewall --autocenter -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__2=true -D design_int=2 -D __mfs__top=true --camera=0,0,0,0,0,0,100 -D __mfs__320x240=true --imgsize=320,240 -o build_v1.0/scopes/png/design_v12_2_top_320x240.png design.scad 2> build_v1.0/scopes/png/design_v12_2_top_320x240.log

-include build_v1.0/scopes/png/design_v12_2_top_320x240.depend

build_v1.0/scopes/png/design_v12_2_top_320x240.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_v12_2_top_320x240.png : build_v1.0/scopes/design_scope1.makefile

################################################################################
# convert                         png --> eps                    target 1.18.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_v12_2_top_320x240.eps
targets_design += build_v1.0/scopes/png2eps/design_v12_2_top_320x240.eps
targets += build_v1.0/scopes/png2eps/design_v12_2_top_320x240.eps

build_v1.0/scopes/png2eps/design_v12_2_top_320x240.eps : build_v1.0/scopes/png/design_v12_2_top_320x240.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_v12_2_top_320x240.png build_v1.0/scopes/png2eps/design_v12_2_top_320x240.eps

build_v1.0/scopes/png2eps/design_v12_2_top_320x240.eps : | build_v1.0/scopes/png2eps
                                                                              
#---------------------------------- menu_ext ----------------------------------#

.PHONY : all_design_png2eps
all_design_png2eps : ${targets_design_png2eps}

.PHONY : echo_all_design_png2eps
echo_all_design_png2eps :
	 @echo "${targetsdir_design_png2eps} ${targets_design_png2eps} ${cleanfiles_design_png2eps}"

.PHONY : echo_targetsdir_design_png2eps
echo_targetsdir_design_png2eps :
	 @echo "${targetsdir_design_png2eps}"

.PHONY : echo_targets_design_png2eps
echo_targets_design_png2eps :
	 @echo "${targets_design_png2eps}"

.PHONY : echo_cleanfiles_design_png2eps
echo_cleanfiles_design_png2eps :
	 @echo "${cleanfiles_design_png2eps}"

.PHONY : list_all_design_png2eps
list_all_design_png2eps :
	 @echo ; echo "# [ targetsdir_design_png2eps ] ($(words ${targetsdir_design_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design_png2eps},echo ${v};)
	 @echo ; echo "# [ targets_design_png2eps ] ($(words ${targets_design_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design_png2eps},echo ${v};)
	 @echo ; echo "# [ cleanfiles_design_png2eps ] ($(words ${cleanfiles_design_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design_png2eps},echo ${v};)

.PHONY : list_targetsdir_design_png2eps
list_targetsdir_design_png2eps :
	 @echo ; echo "# [ targetsdir_design_png2eps ] ($(words ${targetsdir_design_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design_png2eps},echo ${v};)

.PHONY : list_targets_design_png2eps
list_targets_design_png2eps :
	 @echo ; echo "# [ targets_design_png2eps ] ($(words ${targets_design_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design_png2eps},echo ${v};)

.PHONY : list_cleanfiles_design_png2eps
list_cleanfiles_design_png2eps :
	 @echo ; echo "# [ cleanfiles_design_png2eps ] ($(words ${cleanfiles_design_png2eps}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design_png2eps},echo ${v};)

.PHONY : clean_design_png2eps
clean_design_png2eps :
	 -$(foreach v,${targets_design_png2eps}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_design_png2eps}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_design_png2eps}, /bin/rmdir --verbose ${v};)

.PHONY : all_design_png
all_design_png : ${targets_design_png}

.PHONY : echo_all_design_png
echo_all_design_png :
	 @echo "${targetsdir_design_png} ${targets_design_png} ${cleanfiles_design_png}"

.PHONY : echo_targetsdir_design_png
echo_targetsdir_design_png :
	 @echo "${targetsdir_design_png}"

.PHONY : echo_targets_design_png
echo_targets_design_png :
	 @echo "${targets_design_png}"

.PHONY : echo_cleanfiles_design_png
echo_cleanfiles_design_png :
	 @echo "${cleanfiles_design_png}"

.PHONY : list_all_design_png
list_all_design_png :
	 @echo ; echo "# [ targetsdir_design_png ] ($(words ${targetsdir_design_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design_png},echo ${v};)
	 @echo ; echo "# [ targets_design_png ] ($(words ${targets_design_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design_png},echo ${v};)
	 @echo ; echo "# [ cleanfiles_design_png ] ($(words ${cleanfiles_design_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design_png},echo ${v};)

.PHONY : list_targetsdir_design_png
list_targetsdir_design_png :
	 @echo ; echo "# [ targetsdir_design_png ] ($(words ${targetsdir_design_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design_png},echo ${v};)

.PHONY : list_targets_design_png
list_targets_design_png :
	 @echo ; echo "# [ targets_design_png ] ($(words ${targets_design_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design_png},echo ${v};)

.PHONY : list_cleanfiles_design_png
list_cleanfiles_design_png :
	 @echo ; echo "# [ cleanfiles_design_png ] ($(words ${cleanfiles_design_png}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design_png},echo ${v};)

.PHONY : clean_design_png
clean_design_png :
	 -$(foreach v,${targets_design_png}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_design_png}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_design_png}, /bin/rmdir --verbose ${v};)
                                                                              
#-------------------------------- end_makefile --------------------------------#

################################################################################
################################################################################
##----------------------------------------------------------------------------##
## end                              makefile                              end ##
##----------------------------------------------------------------------------##
##                        design.scad --> png --> eps                         ##
################################################################################
################################################################################

################################################################################
################################################################################
##      THIS FILE HAS BEEN GENERATED, CHANGES WILL LIKELY BE OVERRIDDEN.      ##
##----------------------------------------------------------------------------##
## begin                            makefile                            begin ##
##----------------------------------------------------------------------------##
##                            design.scad --> stl                             ##
################################################################################
################################################################################
# makefile created:                               Thu Sep 11 16:56:03 PDT 2025 #
# on system:                                                             Linux #
# machine:                                                              x86_64 #
# host:                                                dave-precisiontower7910 #
################################################################################
                                                                              
#---------------------------------- summary -----------------------------------#

################################################################################
#                              Variables Summary                               #
################################################################################
# design.scad                                                    [source name] #
# stl                                                             [target ext] #
# build_v1.0/scopes                                              [output path] #
# build_v1.0/scopes/design_scope1.makefile                     [makefile name] #
# build_v1.0/scopes/stl                                      [output stempath] #
# str int                                            [combination option sets] #
#-------------------------------[target depends]-------------------------------#
# build_v1.0/scopes/design_scope1.makefile                                     #
################################################################################

################################################################################
#                                Common Options                                #
################################################################################
# --render                                                                     #
################################################################################
                                                                              
#----------------------------------- tables -----------------------------------#

################################################################################
# 2 set(s)                    Combination Options                     2 set(s) #
################################################################################
# begin                           table [str]                            begin #
#+----------------------------------------------------------------------------+#
#  1: [_v10] = [-D design_str=\"v10\"]                                         #
#  2: [_v11] = [-D design_str=\"v11\"]                                         #
#  3: [_v12] = [-D design_str=\"v12\"]                                         #
#+----------------------------------------------------------------------------+#
# end                              3 entries                               end #
#==============================================================================#
################################################################################
# begin                           table [int]                            begin #
#+----------------------------------------------------------------------------+#
#  1: [_1] = [-D design_int=1]                                                 #
#  2: [_2] = [-D design_int=2]                                                 #
#+----------------------------------------------------------------------------+#
# end                              2 entries                               end #
#==============================================================================#
################################################################################
# 2 set(s)                    6 total combinations                    2 set(s) #
################################################################################
                                                                              
#---------------------------------- targets -----------------------------------#
                                                                              
#----------------------------------------------------------------- directories #

targetsdir_design_stl = build_v1.0/scopes/stl
targetsdir_design += build_v1.0/scopes/stl
targetsdir += build_v1.0/scopes/stl

build_v1.0/scopes/stl :
	 /bin/mkdir --parents --verbose build_v1.0/scopes/stl
                                                                              
#--------------------------------------------------------------------- recipes #

################################################################################
# openscad                            stl                         target 2.1.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                   [_v10]                                     #
#                                    [_1]                                      #
################################################################################

targets_design_stl += build_v1.0/scopes/stl/design_v10_1.stl
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v10_1.time
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v10_1.depend
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v10_1.log

targets_design += build_v1.0/scopes/stl/design_v10_1.stl
cleanfiles_design += build_v1.0/scopes/stl/design_v10_1.time
cleanfiles_design += build_v1.0/scopes/stl/design_v10_1.depend
cleanfiles_design += build_v1.0/scopes/stl/design_v10_1.log

targets += build_v1.0/scopes/stl/design_v10_1.stl
cleanfiles += build_v1.0/scopes/stl/design_v10_1.time
cleanfiles += build_v1.0/scopes/stl/design_v10_1.depend
cleanfiles += build_v1.0/scopes/stl/design_v10_1.log

build_v1.0/scopes/stl/design_v10_1.stl : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/design_v10_1.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/design_v10_1.depend --render -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__1=true -D design_int=1 -o build_v1.0/scopes/stl/design_v10_1.stl design.scad 2> build_v1.0/scopes/stl/design_v10_1.log

-include build_v1.0/scopes/stl/design_v10_1.depend

build_v1.0/scopes/stl/design_v10_1.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/design_v10_1.stl : build_v1.0/scopes/design_scope1.makefile

################################################################################
# openscad                            stl                         target 2.2.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                   [_v10]                                     #
#                                    [_2]                                      #
################################################################################

targets_design_stl += build_v1.0/scopes/stl/design_v10_2.stl
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v10_2.time
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v10_2.depend
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v10_2.log

targets_design += build_v1.0/scopes/stl/design_v10_2.stl
cleanfiles_design += build_v1.0/scopes/stl/design_v10_2.time
cleanfiles_design += build_v1.0/scopes/stl/design_v10_2.depend
cleanfiles_design += build_v1.0/scopes/stl/design_v10_2.log

targets += build_v1.0/scopes/stl/design_v10_2.stl
cleanfiles += build_v1.0/scopes/stl/design_v10_2.time
cleanfiles += build_v1.0/scopes/stl/design_v10_2.depend
cleanfiles += build_v1.0/scopes/stl/design_v10_2.log

build_v1.0/scopes/stl/design_v10_2.stl : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/design_v10_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/design_v10_2.depend --render -D __mfs__v10=true -D design_str=\"v10\" -D __mfs__2=true -D design_int=2 -o build_v1.0/scopes/stl/design_v10_2.stl design.scad 2> build_v1.0/scopes/stl/design_v10_2.log

-include build_v1.0/scopes/stl/design_v10_2.depend

build_v1.0/scopes/stl/design_v10_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/design_v10_2.stl : build_v1.0/scopes/design_scope1.makefile

################################################################################
# openscad                            stl                         target 2.3.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                   [_v11]                                     #
#                                    [_1]                                      #
################################################################################

targets_design_stl += build_v1.0/scopes/stl/design_v11_1.stl
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v11_1.time
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v11_1.depend
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v11_1.log

targets_design += build_v1.0/scopes/stl/design_v11_1.stl
cleanfiles_design += build_v1.0/scopes/stl/design_v11_1.time
cleanfiles_design += build_v1.0/scopes/stl/design_v11_1.depend
cleanfiles_design += build_v1.0/scopes/stl/design_v11_1.log

targets += build_v1.0/scopes/stl/design_v11_1.stl
cleanfiles += build_v1.0/scopes/stl/design_v11_1.time
cleanfiles += build_v1.0/scopes/stl/design_v11_1.depend
cleanfiles += build_v1.0/scopes/stl/design_v11_1.log

build_v1.0/scopes/stl/design_v11_1.stl : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/design_v11_1.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/design_v11_1.depend --render -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__1=true -D design_int=1 -o build_v1.0/scopes/stl/design_v11_1.stl design.scad 2> build_v1.0/scopes/stl/design_v11_1.log

-include build_v1.0/scopes/stl/design_v11_1.depend

build_v1.0/scopes/stl/design_v11_1.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/design_v11_1.stl : build_v1.0/scopes/design_scope1.makefile

################################################################################
# openscad                            stl                         target 2.4.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                   [_v11]                                     #
#                                    [_2]                                      #
################################################################################

targets_design_stl += build_v1.0/scopes/stl/design_v11_2.stl
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v11_2.time
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v11_2.depend
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v11_2.log

targets_design += build_v1.0/scopes/stl/design_v11_2.stl
cleanfiles_design += build_v1.0/scopes/stl/design_v11_2.time
cleanfiles_design += build_v1.0/scopes/stl/design_v11_2.depend
cleanfiles_design += build_v1.0/scopes/stl/design_v11_2.log

targets += build_v1.0/scopes/stl/design_v11_2.stl
cleanfiles += build_v1.0/scopes/stl/design_v11_2.time
cleanfiles += build_v1.0/scopes/stl/design_v11_2.depend
cleanfiles += build_v1.0/scopes/stl/design_v11_2.log

build_v1.0/scopes/stl/design_v11_2.stl : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/design_v11_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/design_v11_2.depend --render -D __mfs__v11=true -D design_str=\"v11\" -D __mfs__2=true -D design_int=2 -o build_v1.0/scopes/stl/design_v11_2.stl design.scad 2> build_v1.0/scopes/stl/design_v11_2.log

-include build_v1.0/scopes/stl/design_v11_2.depend

build_v1.0/scopes/stl/design_v11_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/design_v11_2.stl : build_v1.0/scopes/design_scope1.makefile

################################################################################
# openscad                            stl                         target 2.5.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                   [_v12]                                     #
#                                    [_1]                                      #
################################################################################

targets_design_stl += build_v1.0/scopes/stl/design_v12_1.stl
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v12_1.time
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v12_1.depend
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v12_1.log

targets_design += build_v1.0/scopes/stl/design_v12_1.stl
cleanfiles_design += build_v1.0/scopes/stl/design_v12_1.time
cleanfiles_design += build_v1.0/scopes/stl/design_v12_1.depend
cleanfiles_design += build_v1.0/scopes/stl/design_v12_1.log

targets += build_v1.0/scopes/stl/design_v12_1.stl
cleanfiles += build_v1.0/scopes/stl/design_v12_1.time
cleanfiles += build_v1.0/scopes/stl/design_v12_1.depend
cleanfiles += build_v1.0/scopes/stl/design_v12_1.log

build_v1.0/scopes/stl/design_v12_1.stl : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/design_v12_1.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/design_v12_1.depend --render -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__1=true -D design_int=1 -o build_v1.0/scopes/stl/design_v12_1.stl design.scad 2> build_v1.0/scopes/stl/design_v12_1.log

-include build_v1.0/scopes/stl/design_v12_1.depend

build_v1.0/scopes/stl/design_v12_1.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/design_v12_1.stl : build_v1.0/scopes/design_scope1.makefile

################################################################################
# openscad                            stl                         target 2.6.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                   [_v12]                                     #
#                                    [_2]                                      #
################################################################################

targets_design_stl += build_v1.0/scopes/stl/design_v12_2.stl
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v12_2.time
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v12_2.depend
cleanfiles_design_stl += build_v1.0/scopes/stl/design_v12_2.log

targets_design += build_v1.0/scopes/stl/design_v12_2.stl
cleanfiles_design += build_v1.0/scopes/stl/design_v12_2.time
cleanfiles_design += build_v1.0/scopes/stl/design_v12_2.depend
cleanfiles_design += build_v1.0/scopes/stl/design_v12_2.log

targets += build_v1.0/scopes/stl/design_v12_2.stl
cleanfiles += build_v1.0/scopes/stl/design_v12_2.time
cleanfiles += build_v1.0/scopes/stl/design_v12_2.depend
cleanfiles += build_v1.0/scopes/stl/design_v12_2.log

build_v1.0/scopes/stl/design_v12_2.stl : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/design_v12_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/design_v12_2.depend --render -D __mfs__v12=true -D design_str=\"v12\" -D __mfs__2=true -D design_int=2 -o build_v1.0/scopes/stl/design_v12_2.stl design.scad 2> build_v1.0/scopes/stl/design_v12_2.log

-include build_v1.0/scopes/stl/design_v12_2.depend

build_v1.0/scopes/stl/design_v12_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/design_v12_2.stl : build_v1.0/scopes/design_scope1.makefile
                                                                              
#---------------------------------- menu_ext ----------------------------------#

.PHONY : all_design_stl
all_design_stl : ${targets_design_stl}

.PHONY : echo_all_design_stl
echo_all_design_stl :
	 @echo "${targetsdir_design_stl} ${targets_design_stl} ${cleanfiles_design_stl}"

.PHONY : echo_targetsdir_design_stl
echo_targetsdir_design_stl :
	 @echo "${targetsdir_design_stl}"

.PHONY : echo_targets_design_stl
echo_targets_design_stl :
	 @echo "${targets_design_stl}"

.PHONY : echo_cleanfiles_design_stl
echo_cleanfiles_design_stl :
	 @echo "${cleanfiles_design_stl}"

.PHONY : list_all_design_stl
list_all_design_stl :
	 @echo ; echo "# [ targetsdir_design_stl ] ($(words ${targetsdir_design_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design_stl},echo ${v};)
	 @echo ; echo "# [ targets_design_stl ] ($(words ${targets_design_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design_stl},echo ${v};)
	 @echo ; echo "# [ cleanfiles_design_stl ] ($(words ${cleanfiles_design_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design_stl},echo ${v};)

.PHONY : list_targetsdir_design_stl
list_targetsdir_design_stl :
	 @echo ; echo "# [ targetsdir_design_stl ] ($(words ${targetsdir_design_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design_stl},echo ${v};)

.PHONY : list_targets_design_stl
list_targets_design_stl :
	 @echo ; echo "# [ targets_design_stl ] ($(words ${targets_design_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design_stl},echo ${v};)

.PHONY : list_cleanfiles_design_stl
list_cleanfiles_design_stl :
	 @echo ; echo "# [ cleanfiles_design_stl ] ($(words ${cleanfiles_design_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design_stl},echo ${v};)

.PHONY : clean_design_stl
clean_design_stl :
	 -$(foreach v,${targets_design_stl}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_design_stl}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_design_stl}, /bin/rmdir --verbose ${v};)
                                                                              
#---------------------------------- menu_src ----------------------------------#

.PHONY : all_design
all_design : ${targets_design}

.PHONY : echo_all_design
echo_all_design :
	 @echo "${targetsdir_design} ${targets_design} ${cleanfiles_design}"

.PHONY : echo_targetsdir_design
echo_targetsdir_design :
	 @echo "${targetsdir_design}"

.PHONY : echo_targets_design
echo_targets_design :
	 @echo "${targets_design}"

.PHONY : echo_cleanfiles_design
echo_cleanfiles_design :
	 @echo "${cleanfiles_design}"

.PHONY : list_all_design
list_all_design :
	 @echo ; echo "# [ targetsdir_design ] ($(words ${targetsdir_design}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design},echo ${v};)
	 @echo ; echo "# [ targets_design ] ($(words ${targets_design}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design},echo ${v};)
	 @echo ; echo "# [ cleanfiles_design ] ($(words ${cleanfiles_design}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design},echo ${v};)

.PHONY : list_targetsdir_design
list_targetsdir_design :
	 @echo ; echo "# [ targetsdir_design ] ($(words ${targetsdir_design}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_design},echo ${v};)

.PHONY : list_targets_design
list_targets_design :
	 @echo ; echo "# [ targets_design ] ($(words ${targets_design}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_design},echo ${v};)

.PHONY : list_cleanfiles_design
list_cleanfiles_design :
	 @echo ; echo "# [ cleanfiles_design ] ($(words ${cleanfiles_design}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_design},echo ${v};)

.PHONY : clean_design
clean_design :
	 -$(foreach v,${targets_design}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_design}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_design}, /bin/rmdir --verbose ${v};)
                                                                              
#---------------------------------- menu_all ----------------------------------#

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
##                            design.scad --> stl                             ##
################################################################################
################################################################################
