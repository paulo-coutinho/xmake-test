.PHONY: help
help:             ## Show the help.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep

.PHONY: build-macosx
build-macosx:     ## Build all targets for macosx
	@echo "Building for macosx (x86_64)"
	@xmake f -p macosx -a x86_64
	-@xmake -r ezored-app
	@echo "Building for macosx (arm64)"
	@xmake f -p macosx -a arm64
	-@xmake -r ezored-app

.PHONY: build-iphoneos
build-iphoneos:   ## Build all targets for iphoneos
	@echo "Building for iphoneos (x86_64)"
	@xmake f -p iphoneos -a x86_64
	-@xmake -r ezored-lib
	@echo "Building for iphoneos (i386)"
	@xmake f -p iphoneos -a i386
	-@xmake -r ezored-lib
	@echo "Building for iphoneos (arm64)"
	@xmake f -p iphoneos -a arm64
	-@xmake -r ezored-lib
	@echo "Building for iphoneos (armv7)"
	@xmake f -p iphoneos -a armv7
	-@xmake -r ezored-lib

.PHONY: build-watchos
build-watchos:    ## Build all targets for watchos
	@echo "Building for watchos (x86_64)"
	@xmake f -p watchos -a x86_64
	-@xmake -r ezored-lib
	@echo "Building for watchos (arm64_32)"
	@xmake f -p watchos -a arm64_32
	-@xmake -r ezored-lib
	@echo "Building for watchos (armv7k)"
	@xmake f -p watchos -a armv7k
	-@xmake -r ezored-lib

.PHONY: build-appletvos
build-appletvos:    ## Build all targets for appletvos
	@echo "Building for appletvos (x86_64)"
	@xmake f -p appletvos -a x86_64
	-@xmake -r ezored-lib
	@echo "Building for appletvos (armv8)"
	@xmake f -p appletvos -a armv8
	-@xmake -r ezored-lib
	@echo "Building for appletvos (armv7)"
	@xmake f -p appletvos -a armv7
	-@xmake -r ezored-lib
