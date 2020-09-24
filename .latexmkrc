$pdf_previewer = 'open';
$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error';
$pdf_mode = 1;

$bibtex_use = 1;

$out_dir = "tmp";
$tmpdir  = "tmp";

@generated_exts = (@generated_exts, 'synctex.gz');

@default_files = ('index.tex');
