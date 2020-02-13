# ny_lapper

This is a POC wrapper for the Nim package
[nim-lapper](https://github.com/brentp/nim-lapper) using the [nimpy](https://github.com/yglukhov/nimpy)
and [nython](https://github.com/sstadick/nython). This is meant mostly
to demo how to import an outside Nim module, as well as how nimpy
handles objects.

Performance is TBD


## Reqs

You must have the following installed on your system

- Nim
- Nimble
- Poetry

To install nim deps, clone the repo and run `nimble install`


## Install

Currently must build from source. Pull the repo, and run `poetry build`


## Overall setup

This is a hybrid package. the ny_lapper.nimble file describes the nim
requirements and is used to install the nim reqs. The pyproject.toml
file defines the python reqs and coordinates poetry. The nim source code
is in the same dir as the project name `ny_lapper`. 

Make sure to look at the `build.py` file that the `pyproject.toml` file
references because that is what connects the nim build to the python
build. The names of things matter. The `__init__.py` is being used to
make Python think that there is a python module there, and to fix up the
namespace. 

To see the module in actin, check out the tests.
