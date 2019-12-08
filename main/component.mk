#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

COMPONENT_SRCDIRS += lib
COMPONENT_ADD_INCLUDEDIRS += lib
CFLAGS += -O3 -ffast-math
