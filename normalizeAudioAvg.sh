#! /bin/bash
# You'll need zenity, ffmpeg/avconv and ffmpeg-normalize (google it, for me it didn't work with pip)
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to convert!"
    exit 1
fi
norm=$(zenity --entry --title="Normalization" --text="Input target normalization in dB (-12 was enough for some audio track; recommended is some -20 I think)")

#comList=""
for I in `echo $@`;

do ffmpeg-normalize -u -v -l $norm "$I" #ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"; #2>&1 | zenity
#   --title="converting" --text="please wait" --progress --pulsate -auto-close;
done;
