CC:=clang
BUILD_DIR:=./build/repatch
INCS:=-I./../../util/include -I./../../thirdparty/include
LIBDIRS:=-L./../../thirdparty/lib32
LIBS:=-luser32 -lgdi32 -lShlwapi
CFLAGS:=-ffunction-sections -fdata-sections
LDFLAGS:=

ifdef DEBUG
CFLAGS+=-g -D_DEBUG
else
CFLAGS+=-Os
endif

ifneq (,$(findstring clang, $(CC)))
CFLAGS+=-target i686-pc-windows-msvc -D _CRT_SECURE_NO_DEPRECATE
LDFLAGS+=-Wl,/OPT:REF
else 
CFLAGS+=-m32
ifneq (,$(findstring gcc, $(CC)))
LDFLAGS+= -Wl,--gc-sections\
	-static-libgcc -static-libstdc++ \
	-Wl,-Bstatic,--whole-archive -lwinpthread \
	-Wl,--no-whole-archive
endif
endif

all: advhd_patch

advhd_patch: advhd_patch.c
	$(CC) -shared  $^ -o $(BUILD_DIR)/$@.dll \
		$(INCS) $(LIBDIRS) $(LIBS) $(CFLAGS) $(LDFLAGS) 
	rm -rf $(BUILD_DIR)/$@.exp
	rm -rf $(BUILD_DIR)/$@.lib

.PHONY: advhd_patch