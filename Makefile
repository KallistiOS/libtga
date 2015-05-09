# KallistiOS ##version##
#
# libtga Makefile
# (c)2002 Dan Potter

TARGET = libtga.a
OBJS = tga.o
KOS_CFLAGS += -Iinclude

all: create_kos_link defaultall

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/tga
	ln -s ../libtga/include ../include/tga

include $(KOS_BASE)/addons/Makefile.prefab
