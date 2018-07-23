##################################################
all: build
#all: check

########################################
configure:
	cabal --enable-nix new-configure --project-file ./cabal.project

########################################
check:
	cabal new-build -fno-code -O0 all

########################################
build: check
	cabal new-build all

########################################
watch:
	@exec ./scripts/watch.sh &

########################################
install:
	cabal new-build all

########################################
clean:
	rm -rf dist/ dist-newstyle/
	rm -f *.project.local .ghc.environment.*

########################
	cabal new-haddock 
# 	cp -aRv dist-newstyle/build/*/*/unpacked-containers-0/doc/html/unpacked-containers/* docs
# 	cd docs && git commit -a -m "update haddocks" && git push && cd ..

##################################################
update:
	cabal update

########################################
rebuild: clean update configure build docs

########################################
.PHONY:	all check configure build clean docs update rebuild

##################################################