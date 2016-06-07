100 convert tests.jpg tests.pbm
2002  unpaper tests.pbm testsnew.pbm
2003  cjb2 testsnew.pbm testsnew.djvu
2004  unpaper tests.pbm testsnew.pbm
2005  cjb2 tests.pbm testsnew.djvu
2006  ocrodjvu -o bla -e tesseract testsnew.djvu
