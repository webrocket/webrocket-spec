ASCIIDOC = asciidoc
ASCIIDOC_OPTS = -b html5 -d article -f ./asciidoc.conf

DRAFTS = \
	WFP.html

all: drafts
clean: clean-drafts

drafts: $(DRAFTS)
	mkdir -p draft
	mv $(DRAFTS) draft/

clean-drafts:
	rm -f draft/*

$(DRAFTS): %.html : %.txt

%.html: %.txt
	$(ASCIIDOC) $(ASCIIDOC_OPTS) -o $@ $<