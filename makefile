source-directory=`pwd`
src=$(source-directory)/wal.sh
target-directory=~/.local/bin
target=$(target-directory)/wal.sh

install: clean
	mkdir -p $(target-directory)
	ln -s $(src) $(target)
clean:
	rm -f $(target)

.PHONY: install clean

