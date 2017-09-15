#!/usr/bin/env /bin/bash

echo "Testing $TRAVIS_BRANCH"
echo

case "$TRAVIS_BRANCH" in
	*) cd "$TRAVIS_BRANCH" || exit 1;;
esac

if [[ -r test.sh ]] ; then
	bash test.sh
elif [[ -r Makefile ]] ; then
	make test
else
	echo "Don't know how to test $TRAVIS_BRANCH"
	exit 1
fi

# vim: set sw=4 sts=4 ts=4 noet :
