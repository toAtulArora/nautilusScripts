# nautilusScripts
As I said, after going mainstream with linux, I decided to add some useful scripts to Nautilus. At the moment, the following work:
  1. ```convertMedia.sh``` for converting videos to audio/video of various formats
  2. ```makePDF.sh``` for converting jpgs to a single pdf (useful because I scan alot and prefer having the jpgs :)
  3. ```removeSpace.sh``` removes the space from all files in the given directory (regardless of which file you select)
  4. ```refreshThumbnails.sh``` removes the 'failed' directory from the .cache/thumbnails folder
  5. ```normalizeAudio.sh``` normalizes audio files  
  6. ```lockPDF.sh``` locks the selected PDF files
  
To use these, you just need to open the folder corresponding to ```/home/atul/.local/share/nautilus/scripts``` and clone this repository there. Simple :D

NB: You'd need ```ffmpeg```, ```zenity```, ```imagemagick```, ```pdftk``` and ```ffmpeg-normalize``` (see https://github.com/slhck/ffmpeg-normalize and install from the source) installed depending on which scripts you use. 
