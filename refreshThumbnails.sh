#! /bin/bash
#Trying to remove the thumbnail corresponding to a particular file
# touch "debug"
# #echo "file://$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" > debug
# thumbnailFileName=$(echo -n "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | md5sum)
# thumbnailFile=($thumbnailFileName)
# #echo ${thumbnailFile[0]} > debug
# thumbnail=${thumbnailFile[0]} #this will basically get the first part 13431 of the answer 13431 -
# #echo `find ~/.cache/thumbnails -type f -name "$thumbnail"*` > debug
# echo $thumbnail > debug
# gnome-terminal -x rm `find ~/.cache/thumbnails -type f -name "$thumbnail"*`
# #http://askubuntu.com/questions/594978/disable-thumbnail-creation-for-specific-folders-only-but-all-users

#This works the best | just clear out the failed ones and it'll redo everything like it should :D
rm -R /home/atul/.cache/thumbnails/fail

#Trying to rename the file to something else then back
#filename=$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS #$NAUTILUS_SCRIPT_SELECTED_URIS
#touch debug
#echo $filename$(date -d "today" +"%Y%m%d%H%M") > debug
#mv $filename $filename/$(date -d "today" +"%Y%m%d%H%M")
##mv $filename/$(date -d "today" +"%Y%m%d%H%M") $filename
