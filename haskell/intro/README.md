# intro

``` shell
$ stack new project
$ cd project
```

Install the required deps

```shell
$ stack setup
```

Build the haskell package

```shell
$ stack build
```

Run the haskell(if it's binary). Executable name could be edited in package.yaml file. The default will be *-exe.

``` shell
$ stack exec project-exe
```

Build tests and run them. The default test suite name will be *-test but that too could be changed in package.yaml

``` shell
$ stack test
$ stack exec project-test
```
