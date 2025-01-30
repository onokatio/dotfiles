#!/usr/bin/env perl

# synctex: ビューワからエディタにジャンプできるようにする
# interaction=nonstopmode: エラーが出てもプロンプトで尋ねない
# %O: 実行時オプション
# %S: 入力ファイル
# %D: 出力ファイル
#$latex = 'uplatex -synctex=1 -halt-on-error -interaction=nonstopmode -file-line-error%O %S';
$latex = 'platex -halt-on-error -interaction=nonstopmode -file-line-error%O %S';
$lualatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
$pdflualatex = $lualatex;
$bibtex = 'upbibtex %O %B';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$max_repeat = 10;
$pdf_mode = 3;
# pdf_mode params
# 0: $latex (tex -> dvi)
# 1: $pdflatex (tex -> pdf)
# 2: $latex (tex -> dvi) & $dvips (dvi -> ps) & $ps2pdf (ps -> pdf)
# 3: $latex (tex -> dvi) & $dvipdf (dvi -> pdf)
# 4: $lualatex (tex -> pdf)
# 5: $xelatex (tex -> dvi) & $xdvipdfmx (dvi -> pdf)
$pdf_update_method = 3;
#$pdf_previewer = '"C:\Program Files\SumatraPDF\SumatraPDF.exe" -reuse-instance %O %S';
