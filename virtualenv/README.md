### Python virtual env

``` shell
$ pip install virtualenv
$ virtualenv project1_dev
$ source project1_dev

# use the virtual python environment. Install packages
# and develop. To export install packages do -

$ pip freeze --local requirements.txt

# To get out of virtual env.
$ deactivate
$ rm -rf project1_dev
```
