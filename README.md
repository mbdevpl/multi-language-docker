# Usable Ubuntu

Ubuntu with several essential tools pre-installed.

Motivation behind it is need for a convenient debugging/development image,
especially for projects which implemented in more than one programming language.
The image size is a priority too, but the highest priority is ease of development/debugging in it.


## Tags

Currently maintained Docker tags (with corresponding Ubuntu versions):

* [18.04](https://github.com/mbdevpl/docker-usable-ubuntu/tree/18.04)
* [latest](https://github.com/mbdevpl/docker-usable-ubuntu/tree/latest) is same as `ubuntu:latest` (currently 18.04)
* [18.10](https://github.com/mbdevpl/docker-usable-ubuntu/tree/18.10)
* [19.04](https://github.com/mbdevpl/docker-usable-ubuntu/tree/19.04)

No longer maintained tags:

* [16.04](https://github.com/mbdevpl/docker-usable-ubuntu/tree/16.04)
* [17.10](https://github.com/mbdevpl/docker-usable-ubuntu/tree/17.10)


## Features

Container has two users:

* default user `user` with sudo privileges and no password -- use `sudo su` to become root.
* `root` -- use `su - user -c something` to execute something as `user`.


### Software development

Currently supported programming languages:

* C, C++ (GCC 8, LLVM 7)
* Fortran (GCC 8)
* Python 3.6
* Java (Open JDK 9 on 16.04 and 11 on 18.04)

Not installed by default, but also easily available:

* Ruby -- run `sudo /opt/usable-ubuntu/init_ruby.sh` to install
* LaTeX (texlive 2018) -- run `/opt/usable-ubuntu/init_texlive.sh` to install


### Python packages

Python comes with many useful packages pre-installed for convenience.

The feature categories include but aren't limited to:

* debugging (ipdb)
* code analysis (coverage, mypy, pylint, ...)
* parsing, compilation and code generation (numba, Cython, astunparse, typed_ast, ...)
* interactive interfaces (ipython, notebook, ...)
* numerics and data science (numpy, scipy, pandas, matplotlib, ...)
* machine learning (scikit-learn, chainer, keras)


### Tools

Additionally, common tools and libraries including but not limited to:

* screen
* curl
* wget
* git
* environment modules (`module` command)

* vim
* nano
* cmake
* doxygen

See the [contents of the GitHub repository](https://github.com/mbdevpl/docker-usable-ubuntu)
and [latest Docker Cloud build logs](https://cloud.docker.com/swarm/mbdevpl/repository/docker/mbdevpl/usable-ubuntu/builds)
for details of all features.


## Contributing

Contributions of any kind are welcome.
Please open GitHub issues and/or submit pull requests if you see some problem with the images
and/or wish something changed.
