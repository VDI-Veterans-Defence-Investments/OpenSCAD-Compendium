
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
                                                                              
#---------------------------------- summary -----------------------------------#

################################################################################
#                              Variables Summary                               #
################################################################################
# design.scad                                                    [source name] #
# png                                                             [target ext] #
# build_v1.0/scopes                                              [output path] #
# build_v1.0/scopes/design_logo.makefile                       [makefile name] #
# build_v1.0/scopes/png                                      [output stempath] #
# str views sizes                                    [combination option sets] #
#-------------------------------[target depends]-------------------------------#
# build_v1.0/scopes/design_logo.makefile                                       #
#--------------------------[image convertion targets]--------------------------#
# png2eps                           --> eps                      [output path] #
#--------------------------[image convertion options]--------------------------#
# -verbose                                                                     #
################################################################################

################################################################################
#                                Common Options                                #
################################################################################
# --preview                                                                    #
# --projection=p                                                               #
################################################################################
                                                                              
#----------------------------------- tables -----------------------------------#

################################################################################
# 3 set(s)                    Combination Options                     3 set(s) #
################################################################################
# begin                           table [str]                            begin #
#+----------------------------------------------------------------------------+#
#  1: [_logo] = [-D design_str=\"logo\"]                                       #
#+----------------------------------------------------------------------------+#
# end                              1 entries                               end #
#==============================================================================#
################################################################################
# begin                          table [views]                           begin #
#+----------------------------------------------------------------------------+#
#  1: [_top] = [--camera=650,180,50,0,0,0,1700]                                #
#+----------------------------------------------------------------------------+#
# end                              1 entries                               end #
#==============================================================================#
################################################################################
# begin                          table [sizes]                           begin #
#+----------------------------------------------------------------------------+#
#  1: [_200x50] = [--imgsize=200,50]                                           #
#+----------------------------------------------------------------------------+#
# end                              1 entries                               end #
#==============================================================================#
################################################################################
# 3 set(s)                    1 total combinations                    3 set(s) #
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
#                                   3-tuple                                    #
#                                   [_logo]                                    #
#                                   [_top]                                     #
#                                  [_200x50]                                   #
################################################################################

targets_design_png += build_v1.0/scopes/png/design_logo_top_200x50.png
cleanfiles_design_png += build_v1.0/scopes/png/design_logo_top_200x50.time
cleanfiles_design_png += build_v1.0/scopes/png/design_logo_top_200x50.depend
cleanfiles_design_png += build_v1.0/scopes/png/design_logo_top_200x50.log

targets_design += build_v1.0/scopes/png/design_logo_top_200x50.png
cleanfiles_design += build_v1.0/scopes/png/design_logo_top_200x50.time
cleanfiles_design += build_v1.0/scopes/png/design_logo_top_200x50.depend
cleanfiles_design += build_v1.0/scopes/png/design_logo_top_200x50.log

targets += build_v1.0/scopes/png/design_logo_top_200x50.png
cleanfiles += build_v1.0/scopes/png/design_logo_top_200x50.time
cleanfiles += build_v1.0/scopes/png/design_logo_top_200x50.depend
cleanfiles += build_v1.0/scopes/png/design_logo_top_200x50.log

build_v1.0/scopes/png/design_logo_top_200x50.png : design.scad
	 /usr/bin/time --append --verbose -o build_v1.0/scopes/png/design_logo_top_200x50.time /usr/bin/openscad -m make -d build_v1.0/scopes/png/design_logo_top_200x50.depend --preview --projection=p -D __mfs__logo=true -D design_str=\"logo\" -D __mfs__top=true --camera=650,180,50,0,0,0,1700 -D __mfs__200x50=true --imgsize=200,50 -o build_v1.0/scopes/png/design_logo_top_200x50.png design.scad 2> build_v1.0/scopes/png/design_logo_top_200x50.log

-include build_v1.0/scopes/png/design_logo_top_200x50.depend

build_v1.0/scopes/png/design_logo_top_200x50.png : | build_v1.0/scopes/png
build_v1.0/scopes/png/design_logo_top_200x50.png : build_v1.0/scopes/design_logo.makefile

################################################################################
# convert                         png --> eps                     target 1.1.1 #
################################################################################

targets_design_png2eps += build_v1.0/scopes/png2eps/design_logo_top_200x50.eps
targets_design += build_v1.0/scopes/png2eps/design_logo_top_200x50.eps
targets += build_v1.0/scopes/png2eps/design_logo_top_200x50.eps

build_v1.0/scopes/png2eps/design_logo_top_200x50.eps : build_v1.0/scopes/png/design_logo_top_200x50.png
	 /usr/bin/convert -verbose build_v1.0/scopes/png/design_logo_top_200x50.png build_v1.0/scopes/png2eps/design_logo_top_200x50.eps

build_v1.0/scopes/png2eps/design_logo_top_200x50.eps : | build_v1.0/scopes/png2eps
                                                                              
#------------------------------------ menu ------------------------------------#

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
##                        design.scad --> png --> eps                         ##
################################################################################
################################################################################
