#! /bin/bash
# You'll need zenity and ffmpeg/avconv
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to convert!"
    exit 1
fi
#zenity --progress --auto-close --title ="Converting.." --text="Converting to mp3.." --percentage=0
extension=$(zenity --entry --title="Extension" --text="Input either mp3, mp4, wmv or some such known format")
width=$(zenity --entry --title="Width" --text="Input target width (input some standard width else an error might be raised)")

for I in `echo $@`;
#do gnome-terminal -x avconv -i "$I" -acodec mp3 "${I%.*}"."$extension"; #2>&1 | zenity

#do gnome-terminal -x ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"; #2>&1 | zenity
do gnome-terminal -x ffmpeg -i "$I" -filter:v scale="$width":-1 -strict -2 "${I%.*}"compressed."$extension"; #2>&1 | zenity
   #zenity --title="converting" --text="please wait" --progress --pulsate -auto-close;
done;

	 
