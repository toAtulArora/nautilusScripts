#! /bin/bash
# You'll need zenity, ffmpeg built with aac
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to convert!"
    exit 1
fi
#extension=$(zenity --entry --title="Extension" --text="Input container: mka is the only one I know")
bitrate=$(zenity --entry --title="Bitrate" --text="Input bitrate: 80 is fine, 128 is recommended")

#comList="echo 'starting'"
comList="bash -c '"
comL=""
for I in `echo $@`
do
    comL="~/bin/ffmpeg -i "\"""$I""\"" -c:a libopus -b:a "${bitrate}"k "\"""${I%.*}".mka""\"" #; ffmpeg-normalize -u -v -m -l $norm "$I" #ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"
    comList=${comList}${comL}";"
    # 2>&1 | zenity
    #   --title="converting" --text="please wait" --progress --pulsate -auto-close;
done

#gnome-terminal -e echo 'hello' && echo 'gla' && read hello #$comList
#comList = $comList"glaba"
# \$SHELL\'"
comList=$comList"echo \"All done\";exec \$SHELL'"
#xterm -hold -e "$comList"
gnome-terminal -e "$comList"

#gla=$(zenity --entry --title="bla" --text="$comList")


#to run multiple commands from a new terminal, use
# gnome-terminal -e "bash -c 'vim;vim;exec $SHELL'"
# The aforesaid does just this

#Caveats
# 1. glaba="glooboo" will work but glaba = "glooboo" will not. Space is an issue
# 2. Always use "$I" etc. because otherwise the spaces get messed up
# 3. To literally add " to a string, use "\""; eg. "\"""$A""\"". I am sure there's a better way but the aforesaid works
