##################################################
##################################################
all: build

####################
.PHONY:	all check configure build clean docs update rebuild

##################################################
##################################################
configure:
	cabal --enable-nix new-configure --project-file ./cabal.project

####################
check:
	cabal new-build -fno-code -O0 all

####################
compile:
	cabal new-build all

####################
repl:
	cabal new-repl genovation-control-pad

# ####################
# install:
# 	cabal new-build all

####################
rebuild: clean update configure build docs

####################
clean:
	rm -rf dist/ dist-newstyle/ .sboo/
	rm -f *.project.local .ghc.environment.*

##################################################
##################################################
build: check compile

####################
tags: compile
	mkdir -p .sboo/
	fast-tags -o ".sboo/tags" -R .
	cat ".sboo/tags"

########################
docs: compile
	cabal new-haddock 
# 	cp -aRv dist-newstyle/build/*/*/unpacked-containers-0/doc/html/unpacked-containers/* docs
# 	cd docs && git commit -a -m "update haddocks" && git push && cd ..

####################
update:
	cabal new-update

####################
watch:
	@exec ./scripts/watch.sh &

##################################################
##################################################

####################
sdist:
	cabal check
	cabal sdist

####################
release: sdist
	mkdir -p "release/"
	cp "dist/genovation-control-pad-*.tar.gz" "release/"
        #TODO `VERSION` Makefile variable.
        #TODO `cabal new-sdist`?

# e.g.
#    dist/genovation-control-pad-0.0.tar.gz

##################################################
##################################################