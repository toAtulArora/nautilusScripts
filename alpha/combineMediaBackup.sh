#! /bin/bash
# You'll need zenity and ffmpeg/avconv
if [$# -eq 0]; then
    zenity --error --title="Oops!" --text="Atlest tell me what to combine!"
    exit 1
fi

extension=$(zenity --entry --title="Extension" --text="Input either mp3, mp4, wmv or some such known target format to combine the media into")
rm mylist
touch mylist
for I in `echo $@`;
do echo "file '$I'" >> mylist; done

gnome-terminal -x ffmpeg -f concat -i mylist -c copy combined."$extension" #&& rm mylist

#rm mylist

#do gnome-terminal -x ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"; #2>&1 | zenity
#do ffmpeg -i "$I" -strict -2 "${I%.*}"."$extension"; #2>&1 | zenity
#   --title="converting" --text="please wait" --progress --pulsate -auto-close;
#done;

	 
