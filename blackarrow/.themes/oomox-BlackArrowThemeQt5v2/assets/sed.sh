#!/bin/sh
sed -i \
         -e 's/#181b21/rgb(0%,0%,0%)/g' \
         -e 's/#dbdbdb/rgb(100%,100%,100%)/g' \
    -e 's/#181b21/rgb(50%,0%,0%)/g' \
     -e 's/#CCCCCC/rgb(0%,50%,0%)/g' \
     -e 's/#22262E/rgb(50%,0%,50%)/g' \
     -e 's/#CCCCCC/rgb(0%,0%,50%)/g' \
	"$@"
