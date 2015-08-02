#! /bin/bash

find -name "* *" -type f | rename 's/ /_/g'

# for I in `echo $NAUTILUS_SCRIPT_SELECTED_URIS`; #`echo $@`;	
# 	 #do spaceFixed="$(echo -e "$I" | tr -d '[[:space:]]')"; cp "$I" "$spaceFixed";
# 	 #do cp "$I""bla";
# 	 do touch "$I";
# done;

