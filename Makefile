all: dependencies test
SHELL := /bin/bash
PATH := $(PATH):.

test:
	lein test

dependencies:
	which lein || (curl -O 'https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein' && chmod a+x ./lein && ./lein)
	lein deps

.PHONY: all dependencies test
