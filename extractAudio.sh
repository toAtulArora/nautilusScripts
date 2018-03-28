#! /bin/bash
# You'll need zenity and ffmpeg/avconv
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to convert!"
    exit 1
fi
#zenity --progress --auto-close --title ="Converting.." --text="Converting to mp3.." --percentage=0
extension=$(zenity --entry --title="Extension" --text="Input audio container like m4a, mp3, aac ...")
for I in `echo $@`;
#do gnome-terminal -x avconv -i "$I" -acodec mp3 "${I%.*}"."$extension"; #2>&1 | zenity

#do gnome-terminal -x ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"; #2>&1 | zenity
do ffmpeg -i "$I" -vn -c:a copy "${I%.*}"."$extension"; #2>&1 | zenity
   --title="converting" --text="please wait" --progress --pulsate -auto-close;
done;

	 
