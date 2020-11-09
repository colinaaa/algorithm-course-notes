SRC=src

TEX=\
	$(SRC)/example.tex\
	$(SRC)/dynamic-programming-1.tex\
	$(SRC)/Network-flows.tex\
	
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
