SRC=src

TEX=\
	$(SRC)/Ln1-AsymptoticOrderGrowth.tex\
	$(SRC)/Tiling-Problem.tex\
	$(SRC)/stable-matching.tex\
	$(SRC)/Ln10-Master theorem\
	$(SRC)/Ln9-NearestPoints.tex\
	$(SRC)/Ln11-LargeIntegerMultiplication.tex\
	$(SRC)/Ln12-Divide-and-conquer algorithm matrix algorithm.tex\
	$(SRC)/Ln13-The Kth extreme of the divide-and-conquer algorithm.tex\
	$(SRC)/dynamic-programming-1.tex\
	$(SRC)/Ln18-DP-ZeroOneKnapsack.tex\
	$(SRC)/Ln19-DP-ContextFreeGrammar.tex\
	$(SRC)/Network-flows.tex\
	$(SRC)/Image-segmentation.tex\

all: book.pdf
.PHONY: all clean dev clean-all

book.pdf: book.tex $(TEX)
	latexmk -silent book
	@cp tmp/book.pdf book.pdf

dev: $(TEX)
	latexmk -silent -pvc book

clean:
	latexmk -c book

clean-all:
	latexmk -C book
	rm book.pdf
