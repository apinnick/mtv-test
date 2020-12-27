
all: html

html: all-html

pdf: all-pdf

clean: all-clean

browser: all-browser

all-html:
	cd mtv && $(MAKE) html

all-pdf:
	cd mtv && $(MAKE) pdf

all-clean:
	cd mtv && $(MAKE) clean

all-browser:
	cd mtv && $(MAKE) browser
