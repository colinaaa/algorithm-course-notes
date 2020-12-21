SRC=src

TEX=\
	$(SRC)/Ln1-AsymptoticOrderGrowth.tex\
	$(SRC)/Tiling-Problem.tex\
	$(SRC)/stable-matching.tex\
	$(SRC)/Ln9-NearestPoints.tex\
	$(SRC)/Ln11-LargeIntegerMultiplication.tex\
	$(SRC)/dynamic-programming-1.tex\
	$(SRC)/Ln17-DP-ShortestPath.tex\
	$(SRC)/Ln18-DP-ZeroOneKnapsack.tex\
	$(SRC)/Ln19-DP-ContextFreeGrammar.tex\
	$(SRC)/Network-flows.tex\
	$(SRC)/Image-segmentation.tex\
	$(SRC)/Ln15-ApproximationAlgorithm.tex\
	$(SRC)/Ln06-MST.tex\
	$(SRC)/Ln07-redblue.tex\
	$(SRC)/Ln26-P-NP.tex\
	$(SRC)/Proof-of-Statute\

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
