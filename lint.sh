#!/usr/bin/env bash

# print general info
pwd
python --version
pylint --version
yamllint --version

# python
echo Linting python files
pylint --rcfile=setup.cfg ./*.py

# yaml
echo Linting yaml files
yamllint -c .yamllint ./
