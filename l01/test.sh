#!/usr/bin/env /bin/bash

source ../test/common.sh

[[ -r Makefile ]] || die "No Makefile present"

greeting=$(make greeting) || die "Running make failed"
[[ "$greeting" == "Hello!" ]] || die "Wrong greeting '$greeting'"

echo "Passed"

# vim: set sw=4 sts=4 ts=4 noet :
