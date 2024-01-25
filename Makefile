
DOTS=$(wildcard *.dot)
PNGS=$(DOTS:.dot=.png)

all: orgChart.png

clean:
	rm -f *.aux *.log *.out *~
	chmod a-x *.tex
	dos2unix *.tex

realclean: clean

images: $(PNGS)

%.png: %.dot
	dot $< -Tpng -o$@

