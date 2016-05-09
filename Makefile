projectroot.a: projectroot/libprojectroot.o
	dub build

projectroot/libprojectroot.o:
	git submodule update --init --recursive
	cd ./projectroot && make libprojectroot.o
