#!/usr/bin/env bash

set -e

mkdir -p up && curl -L https://github.com/sesh/django-up/tarball/main | tar -xz --strip-components=1 -C up

pipenv install
pipenv run pip freeze > requirements.txt

pipenv run python manage.py up django-up.com

rm -rf up
