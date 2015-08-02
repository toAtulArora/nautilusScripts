#! /bin/bash
# You'll need zenity, imagemagick
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to convert!"
    exit 1
fi

#fileName = `zenity --entry --title="Filename?" --text="What name should the PDF have.." --entry-text "output" | sed 's/ max//g' `
#convert $* "$fileName".pdf
  #else convert $* output.pdf
#fi
zenity --progress --auto-close --title ="Converting.." --text="Converting to PDF.." --percentage=0
#spaceFixed="$(echo -e "$*" | tr -d '[[:space:]]')"
#touch "$spaceFixed"
gnome-terminal -x convert "$@" output.pdf

#$SHELL
#while [$# -gt 0]; do
#    cFile=$1
#    lFile=`echo "$cFile"
