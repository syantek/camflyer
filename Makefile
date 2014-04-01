all: tools

tools: tools/bin/xflr5

tools/xflr5-code/xflr5-6.10/xflr5_6.10.pro:
	svn checkout svn://svn.code.sf.net/p/xflr5/code/trunk tools/xflr5-code

tools/bin:
	mkdir -p ./tools/bin

tools/bin/xflr5: tools/xflr5-code/xflr5-6.10/xflr5_6.10.pro packages tools/bin
	sudo apt-get install subversion git libqt4-dev
	cd tools/xflr5-code/xflr5-6.10 && qmake-qt4 && make -j8
	ln -sf ../xflr5-code/xflr5-6.10/xflr5 ./tools/bin/xflr5

clean:
	rm -rf ./bin

dist-clean:
	rm -rf ./tools

.PHONY: packages bin-dir tools
