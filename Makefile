default:
	./ssg

install:
	cp ssg ${HOME}/.local/bin
	cp .ssg ${HOME}/.ssgrc
	sudo cp ssg.1 /usr/local/share/man/man1/

man:
	pandoc --standalone --to man ssg.1.md -o ssg.1
	cat /usr/local/share/man/man1/ssg.1 | groff -mandoc -Thtml >ssg.1.html