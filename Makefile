all: dependencies test
LEIN = $(shell which lein || echo './lein')

test:
	$(LEIN) test

dependencies:
	which lein || test -s lein || (curl -O 'https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein' && chmod a+x $(LEIN) && $(LEIN))
	$(LEIN) deps

.PHONY: all dependencies test
