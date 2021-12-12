install:
	cp ssg ${HOME}/.local/bin/
	cp ssg.1 ${HOME}/.local/share/man/man1/

man:
	pandoc --standalone --to man ssg.1.md -o ssg.1
	pandoc ssg.1.md > ssg.1.html