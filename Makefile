#.SUFFIXES:
.SUFFIXES: .ms .pdf

.ms.pdf:
	iconv -t ISO-8859-1 $< | groff -e -p -ms - | pstopdf -i -o $@
	# iconv -t ISO-8859-1 $< | pic - | eqn - | groff -ms - | pstopdf -i -o $@

all: first.pdf

clean:
	rm first.pdf

.PHONY: clean all
