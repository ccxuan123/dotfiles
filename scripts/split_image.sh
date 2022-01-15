#!/bin/bash

# IMG_A_START_X=0
# IMG_A_END_X=2777
# IMG_A_START_Y=0
# IMG_A_END_Y=3602
# 
# IMG_B_START_X=2942
# IMG_B_END_X=5397
# IMG_B_START_Y=0
# IMG_B_END_Y=3602
# 
# IMG_A_TARGET_W=$(expr $IMG_A_END_X - $IMG_A_START_X)
# IMG_A_TARGET_H=$(expr $IMG_A_END_Y - $IMG_A_START_Y)
# IMG_B_TARGET_W=$(expr $IMG_B_END_X - $IMG_B_START_X)
# IMG_B_TARGET_H=$(expr $IMG_B_END_Y - $IMG_B_START_Y)

for file in FUJI*.JPG;
    do
        OFFSETX=$(identify -format '%[fx:w/2]' $file)
        OFFSETY=$(identify -format '%[fx:h/2]' $file)
        convert -crop 50%x100%+0+0 $file ${file//.JPG/_A.JPG}
        convert -crop 50%x100%+$OFFSETX+0 $file ${file//.JPG/_B.JPG}
        # convert -crop $IMG_A_TARGET_W'x'$IMG_A_TARGET_H+$IMG_A_START_X+$IMG_A_START_Y $file ${file//.JPG/_A.JPG}
        # convert -crop $IMG_B_TARGET_W'x'$IMG_B_TARGET_H+$IMG_B_START_X+$IMG_B_START_Y $file ${file//.JPG/_B.JPG}
    done

