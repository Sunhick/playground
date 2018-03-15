# intro

``` shell

$ stack new project
$ cd project

# install the required deps
$ stack setup

# build the haskell package
$ stack build

# Run the haskell(if it's binary)
# executable name could be edited in package.yaml file
# The default will be *-exe.
$ stack exec project-exe

# Build tests and run them. The default test suite name
# will be *-test but that too could be changed in package.yaml
$ stack test
$ stack exec project-test

```
