all: gitclean
	./make-package.sh

build:
	$(MAKE) -C appendix
	$(MAKE) -C src

clean:
	$(MAKE) -C appendix clean
	$(MAKE) -C src clean

gitclean:
	git clean -f -x -d

ibtool-upgrade:
	find * -name '*.xib' | while read f; do xcrun ibtool --upgrade "$$f"; done
