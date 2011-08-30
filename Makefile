paper.pdf: paper.ps
	ps2pdf -dCompatibilityLevel#1.4 -dMAxSubsetPct#100 -dSubsetFonts#true -dEmbedAllFonts#true -sPAPERSIZE#letter paper.ps paper.pdf

paper.ps: paper.dvi
	dvips -Ppdf -G0 -tletter paper

paper.dvi: paper.tex
	latex paper
	bibtex paper
	latex paper
	latex paper

clean:
	rm -f *~ *.bbl *.blg *.aux *.dvi *.ps *.pdf *.log