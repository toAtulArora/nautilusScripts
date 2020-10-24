#! /bin/bash
# You'll need zenity, ffmpeg built with aac
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to convert!"
    exit 1
fi
extension=$(zenity --entry --title="Extension" --text="Input container: m4a or aac")

#comList=""
for I in `echo $@`;

#do ~/bin/ffmpeg -i "$I" -c:a libfdk_aac -vbr 5 "${I%.*}"."$extension";
do ~/bin/ffmpeg -i "$I" -c:a libfdk_aac -b:a 32k "${I%.*}"."$extension";
      
   #ffmpeg-normalize -u -v -m -l $norm "$I" #ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"; #2>&1 | zenity
#   --title="converting" --text="please wait" --progress --pulsate -auto-close;
done;
