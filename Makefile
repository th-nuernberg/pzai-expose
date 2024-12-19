SRC := main.tex
OUTDIR := build
PDF := $(OUTDIR)/$(SRC:.tex=.pdf)

all: $(PDF)

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(PDF): $(SRC) | $(OUTDIR)
	latexmk -pdf -outdir=$(OUTDIR) $^

.PHONY: clean
clean:
	latexmk -c -outdir=$(OUTDIR)

.PHONY: distclean
distclean:
	-rm -rf $(OUTDIR)
