--------------------------------------------------

-- http://cabal.readthedocs.io/en/latest/nix-local-build.html

--------------------------------------------------
-- Global config

jobs: $ncpus

keep-going: true

--------------------------------------------------
-- ConstraintSolver config


--------------------------------------------------
-- Package config

- They can be specified at the top-level, in which case they apply only to local package, or
- They can be specified inside a package stanza, in which case they apply to the build of the package, whether or not it is local or external.
- They can be specified inside an package * stanza, in which case they apply to all packages, local ones from the project and also external dependencies.

-- e.g. to enable the flag foo and disable bar:
--
--    flags: +foo -bar
--

-- with-compiler: <executable>
--
-- <executable> can be a "path" or a "token":
-- - a path must be absolute
-- - a token (i.e. no slashes) is resolved via the `PATH` environment-variable.
--

-- compiler: (one of) ghc, ghcjs, jhc, lhc, uhc, haskell-suite

-- 


--------------------------------------------------
-- ObjectCode config

split-sections: true

-- `split-sections` is generally recommended over `split-objs`.
--

-- executable-stripping: boolean
--
-- run the `strip` program on the binary of an executable.
--
-- reduces the size of the executable binary file (this reduction can be considerable).
--
-- how? it removes debugging information/symbols.
--
-- NOTE `debug-info` and `executable-stripping` conflict, if both true.

-- library-stripping: boolean
--
-- run the `strip` program on the binary of a library.
--
-- why? saves disk space.


--------------------------------------------------
-- DynamicLinking config

--

-- shared: boolean
--
-- False by default
--
-- Build a shared library. 
-- > this implies a separate compiler run to generate position independent code, as required on most platforms.

-- library-for-ghci: boolean
--
-- True by default
--
-- Build libraries suitable for use with GHCi. 
-- This involves an extra linking step after the build.



--------------------------------------------------
-- StaticLinking config

-- static: boolean
--
-- False by default
--
-- > Roll this and all dependent libraries into a combined .a archive. 
-- > Uses GHCs `-staticlib` flag, which is available for iOS; and, with GHC 8.4 and later, for other platforms as well (TODO which?).



--------------------------------------------------
-- FFI config

-- extra-include-dirs: directories
--
-- extra directories to search for C header files.
-- 

-- extra-lib-dirs: directories
--
-- extra directories to search for system library files.
-- 

-- extra-framework-dirs: directories
--
-- extra directories to search for Frameworks; OSX-only.
-- 


--------------------------------------------------
-- Profiling config

-- profiling: boolean
-- 
-- Build libraries and executables with profiling enabled (for compilers that support profiling as a separate mode).
--
-- It is only necessary to specify profiling for the specific package you want to profile; cabal new-build will ensure that all of its transitive dependencies are built with profiling enabled.
--
-- To enable profiling for only libraries or only executables, see `library-profiling` and `executable-profiling`.
--
-- For useful profiling, it can be important to control precisely what cost centers are allocated; see `profiling-detail`.



--------------------------------------------------
-- Coverage config

-- coverage: boolean
-- 
-- False by default.
--
-- Build both libraries and executables (including test suites) with Haskell Program Coverage enabled. 
-- Running the test suites will automatically generate coverage reports with HPC.



--------------------------------------------------
-- Documentation config

-- haddock-hoogle: boolean
--
-- False by default.
--
-- Generate a text file which can be converted by Hoogle into a database for searching.
--

-- haddock-all: boolean
--
-- False by default.
--
-- Run haddock on all components.

-- haddock-internal: boolean
--
-- False by default.
--
-- Build haddock documentation which includes unexposed modules and symbols.

-- haddock-css: path
--
-- The CSS file that should be used to style the generated documentation (overriding haddock’s default.)

-- haddock-hyperlink-source: boolean
--
-- False by default.
--
-- Generated hyperlinked source code using HsColour, and have Haddock documentation link to it.


--------------------------------------------------
-- Miscellaneous config

-- cabal-lib-version: version
-- 
-- This field selects the version of the Cabal library which should be used to build packages.
-- 
-- e.g.
--    cabal-lib-version: 1.24.0.1
--

--------------------------------------------------