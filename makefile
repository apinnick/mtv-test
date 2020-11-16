all: html

html: all-html

pdf: all-pdf

clean: all-clean

browser: all-browser

all-html:
	cd doc-mtv && $(MAKE) html

all-pdf:
	cd doc-mtv && $(MAKE) pdf

all-clean:
	cd doc-mtv && $(MAKE) clean

all-browser:
	cd doc-mtv && $(MAKE) browser
