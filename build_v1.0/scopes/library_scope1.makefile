
################################################################################
################################################################################
##      THIS FILE HAS BEEN GENERATED, CHANGES WILL LIKELY BE OVERRIDDEN.      ##
##----------------------------------------------------------------------------##
## begin                            makefile                            begin ##
##----------------------------------------------------------------------------##
##               build_v1.0/scopes/library_scope1.scad --> stl                ##
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
# build_v1.0/scopes/library_scope1.scad                          [source name] #
# stl                                                             [target ext] #
# build_v1.0/scopes                                              [output path] #
# build_v1.0/scopes/library_scope1.makefile                    [makefile name] #
# build_v1.0/scopes/stl                                      [output stempath] #
# str int                                            [combination option sets] #
#-------------------------------[target depends]-------------------------------#
# build_v1.0/scopes/library_scope1.makefile                                    #
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
# 2 set(s)                    4 total combinations                    2 set(s) #
################################################################################
                                                                              
#---------------------------------- targets -----------------------------------#
                                                                              
#----------------------------------------------------------------- directories #

targetsdir_library_scope1_stl = build_v1.0/scopes/stl
targetsdir_library_scope1 += build_v1.0/scopes/stl
targetsdir += build_v1.0/scopes/stl

build_v1.0/scopes/stl :
	 /bin/mkdir --parents --verbose build_v1.0/scopes/stl
                                                                              
#--------------------------------------------------------------------- recipes #

################################################################################
# openscad                            stl                         target 1.1.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                    [_A]                                      #
#                                    [_2]                                      #
################################################################################

targets_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_A_2.stl
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_A_2.time
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_A_2.depend
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_A_2.log

targets_library_scope1 += build_v1.0/scopes/stl/library_scope1_A_2.stl
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_A_2.time
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_A_2.depend
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_A_2.log

targets += build_v1.0/scopes/stl/library_scope1_A_2.stl
cleanfiles += build_v1.0/scopes/stl/library_scope1_A_2.time
cleanfiles += build_v1.0/scopes/stl/library_scope1_A_2.depend
cleanfiles += build_v1.0/scopes/stl/library_scope1_A_2.log

build_v1.0/scopes/stl/library_scope1_A_2.stl : build_v1.0/scopes/library_scope1.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/library_scope1_A_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/library_scope1_A_2.depend --render -D __mfs__A=true -D aux_script_str=\"A\" -D __mfs__2=true -D aux_script_int=2 -o build_v1.0/scopes/stl/library_scope1_A_2.stl build_v1.0/scopes/library_scope1.scad 2> build_v1.0/scopes/stl/library_scope1_A_2.log

-include build_v1.0/scopes/stl/library_scope1_A_2.depend

build_v1.0/scopes/stl/library_scope1_A_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/library_scope1_A_2.stl : build_v1.0/scopes/library_scope1.makefile

################################################################################
# openscad                            stl                         target 1.2.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                    [_B]                                      #
#                                    [_2]                                      #
################################################################################

targets_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_B_2.stl
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_B_2.time
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_B_2.depend
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_B_2.log

targets_library_scope1 += build_v1.0/scopes/stl/library_scope1_B_2.stl
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_B_2.time
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_B_2.depend
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_B_2.log

targets += build_v1.0/scopes/stl/library_scope1_B_2.stl
cleanfiles += build_v1.0/scopes/stl/library_scope1_B_2.time
cleanfiles += build_v1.0/scopes/stl/library_scope1_B_2.depend
cleanfiles += build_v1.0/scopes/stl/library_scope1_B_2.log

build_v1.0/scopes/stl/library_scope1_B_2.stl : build_v1.0/scopes/library_scope1.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/library_scope1_B_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/library_scope1_B_2.depend --render -D __mfs__B=true -D aux_script_str=\"B\" -D __mfs__2=true -D aux_script_int=2 -o build_v1.0/scopes/stl/library_scope1_B_2.stl build_v1.0/scopes/library_scope1.scad 2> build_v1.0/scopes/stl/library_scope1_B_2.log

-include build_v1.0/scopes/stl/library_scope1_B_2.depend

build_v1.0/scopes/stl/library_scope1_B_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/library_scope1_B_2.stl : build_v1.0/scopes/library_scope1.makefile

################################################################################
# openscad                            stl                         target 1.3.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                    [_C]                                      #
#                                    [_2]                                      #
################################################################################

targets_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_C_2.stl
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_C_2.time
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_C_2.depend
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_C_2.log

targets_library_scope1 += build_v1.0/scopes/stl/library_scope1_C_2.stl
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_C_2.time
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_C_2.depend
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_C_2.log

targets += build_v1.0/scopes/stl/library_scope1_C_2.stl
cleanfiles += build_v1.0/scopes/stl/library_scope1_C_2.time
cleanfiles += build_v1.0/scopes/stl/library_scope1_C_2.depend
cleanfiles += build_v1.0/scopes/stl/library_scope1_C_2.log

build_v1.0/scopes/stl/library_scope1_C_2.stl : build_v1.0/scopes/library_scope1.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/library_scope1_C_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/library_scope1_C_2.depend --render -D __mfs__C=true -D aux_script_str=\"C\" -D __mfs__2=true -D aux_script_int=2 -o build_v1.0/scopes/stl/library_scope1_C_2.stl build_v1.0/scopes/library_scope1.scad 2> build_v1.0/scopes/stl/library_scope1_C_2.log

-include build_v1.0/scopes/stl/library_scope1_C_2.depend

build_v1.0/scopes/stl/library_scope1_C_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/library_scope1_C_2.stl : build_v1.0/scopes/library_scope1.makefile

################################################################################
# openscad                            stl                         target 1.4.0 #
#==============================================================================#
#                                   2-tuple                                    #
#                                    [_D]                                      #
#                                    [_2]                                      #
################################################################################

targets_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_D_2.stl
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_D_2.time
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_D_2.depend
cleanfiles_library_scope1_stl += build_v1.0/scopes/stl/library_scope1_D_2.log

targets_library_scope1 += build_v1.0/scopes/stl/library_scope1_D_2.stl
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_D_2.time
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_D_2.depend
cleanfiles_library_scope1 += build_v1.0/scopes/stl/library_scope1_D_2.log

targets += build_v1.0/scopes/stl/library_scope1_D_2.stl
cleanfiles += build_v1.0/scopes/stl/library_scope1_D_2.time
cleanfiles += build_v1.0/scopes/stl/library_scope1_D_2.depend
cleanfiles += build_v1.0/scopes/stl/library_scope1_D_2.log

build_v1.0/scopes/stl/library_scope1_D_2.stl : build_v1.0/scopes/library_scope1.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/stl/library_scope1_D_2.time /usr/bin/openscad -m make -d build_v1.0/scopes/stl/library_scope1_D_2.depend --render -D __mfs__D=true -D aux_script_str=\"D\" -D __mfs__2=true -D aux_script_int=2 -o build_v1.0/scopes/stl/library_scope1_D_2.stl build_v1.0/scopes/library_scope1.scad 2> build_v1.0/scopes/stl/library_scope1_D_2.log

-include build_v1.0/scopes/stl/library_scope1_D_2.depend

build_v1.0/scopes/stl/library_scope1_D_2.stl : | build_v1.0/scopes/stl
build_v1.0/scopes/stl/library_scope1_D_2.stl : build_v1.0/scopes/library_scope1.makefile
                                                                              
#------------------------------------ menu ------------------------------------#

.PHONY : all_library_scope1_stl
all_library_scope1_stl : ${targets_library_scope1_stl}

.PHONY : echo_all_library_scope1_stl
echo_all_library_scope1_stl :
	 @echo "${targetsdir_library_scope1_stl} ${targets_library_scope1_stl} ${cleanfiles_library_scope1_stl}"

.PHONY : echo_targetsdir_library_scope1_stl
echo_targetsdir_library_scope1_stl :
	 @echo "${targetsdir_library_scope1_stl}"

.PHONY : echo_targets_library_scope1_stl
echo_targets_library_scope1_stl :
	 @echo "${targets_library_scope1_stl}"

.PHONY : echo_cleanfiles_library_scope1_stl
echo_cleanfiles_library_scope1_stl :
	 @echo "${cleanfiles_library_scope1_stl}"

.PHONY : list_all_library_scope1_stl
list_all_library_scope1_stl :
	 @echo ; echo "# [ targetsdir_library_scope1_stl ] ($(words ${targetsdir_library_scope1_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope1_stl},echo ${v};)
	 @echo ; echo "# [ targets_library_scope1_stl ] ($(words ${targets_library_scope1_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope1_stl},echo ${v};)
	 @echo ; echo "# [ cleanfiles_library_scope1_stl ] ($(words ${cleanfiles_library_scope1_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope1_stl},echo ${v};)

.PHONY : list_targetsdir_library_scope1_stl
list_targetsdir_library_scope1_stl :
	 @echo ; echo "# [ targetsdir_library_scope1_stl ] ($(words ${targetsdir_library_scope1_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope1_stl},echo ${v};)

.PHONY : list_targets_library_scope1_stl
list_targets_library_scope1_stl :
	 @echo ; echo "# [ targets_library_scope1_stl ] ($(words ${targets_library_scope1_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope1_stl},echo ${v};)

.PHONY : list_cleanfiles_library_scope1_stl
list_cleanfiles_library_scope1_stl :
	 @echo ; echo "# [ cleanfiles_library_scope1_stl ] ($(words ${cleanfiles_library_scope1_stl}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope1_stl},echo ${v};)

.PHONY : clean_library_scope1_stl
clean_library_scope1_stl :
	 -$(foreach v,${targets_library_scope1_stl}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_library_scope1_stl}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_library_scope1_stl}, /bin/rmdir --verbose ${v};)

.PHONY : all_library_scope1
all_library_scope1 : ${targets_library_scope1}

.PHONY : echo_all_library_scope1
echo_all_library_scope1 :
	 @echo "${targetsdir_library_scope1} ${targets_library_scope1} ${cleanfiles_library_scope1}"

.PHONY : echo_targetsdir_library_scope1
echo_targetsdir_library_scope1 :
	 @echo "${targetsdir_library_scope1}"

.PHONY : echo_targets_library_scope1
echo_targets_library_scope1 :
	 @echo "${targets_library_scope1}"

.PHONY : echo_cleanfiles_library_scope1
echo_cleanfiles_library_scope1 :
	 @echo "${cleanfiles_library_scope1}"

.PHONY : list_all_library_scope1
list_all_library_scope1 :
	 @echo ; echo "# [ targetsdir_library_scope1 ] ($(words ${targetsdir_library_scope1}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope1},echo ${v};)
	 @echo ; echo "# [ targets_library_scope1 ] ($(words ${targets_library_scope1}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope1},echo ${v};)
	 @echo ; echo "# [ cleanfiles_library_scope1 ] ($(words ${cleanfiles_library_scope1}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope1},echo ${v};)

.PHONY : list_targetsdir_library_scope1
list_targetsdir_library_scope1 :
	 @echo ; echo "# [ targetsdir_library_scope1 ] ($(words ${targetsdir_library_scope1}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targetsdir_library_scope1},echo ${v};)

.PHONY : list_targets_library_scope1
list_targets_library_scope1 :
	 @echo ; echo "# [ targets_library_scope1 ] ($(words ${targets_library_scope1}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${targets_library_scope1},echo ${v};)

.PHONY : list_cleanfiles_library_scope1
list_cleanfiles_library_scope1 :
	 @echo ; echo "# [ cleanfiles_library_scope1 ] ($(words ${cleanfiles_library_scope1}))"
	 @for x in $(shell seq 80); do echo -n "#" ; done ; echo
	 @$(foreach v,${cleanfiles_library_scope1},echo ${v};)

.PHONY : clean_library_scope1
clean_library_scope1 :
	 -$(foreach v,${targets_library_scope1}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${cleanfiles_library_scope1}, /bin/rm --force --verbose ${v};)
	 -$(foreach v,${targetsdir_library_scope1}, /bin/rmdir --verbose ${v};)

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
##               build_v1.0/scopes/library_scope1.scad --> stl                ##
################################################################################
################################################################################
