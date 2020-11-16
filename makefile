all: html

html: all-html

pdf: all-pdf

clean: all-clean

browser: all-browser

all-html:
	cd doc-mtv_2.0 && $(MAKE) html

all-pdf:
	cd doc-mtv_2.0 && $(MAKE) pdf

all-clean:
	cd doc-mtv_2.0 && $(MAKE) clean

all-browser:
	cd doc-mtv_2.0 && $(MAKE) browser
