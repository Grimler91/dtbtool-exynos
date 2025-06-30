OBJ_FILES := dtbtool-exynos.o
CFLAGS := -O2 -fomit-frame-pointer -Wall

all: dtbTool-exynos

dtbTool-exynos: $(OBJ_FILES)
	$(CC) $(CFLAGS) -o $@ $^ -lfdt
	strip $@

clean:
	rm -f dtbTool-exynos $(OBJ_FILES)
