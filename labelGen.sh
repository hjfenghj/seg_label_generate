#!/bin/bash

# modify CULane to yours
CULane=data
OutputPath=${CULane}/laneseg_label_output1119

if [ ! -d $OutputPath ]; then
  sudo mkdir $OutputPath
  sudo chmod 777 $OutputPath
fi

./build/seg_label_generate \
    -l ${CULane}/list/trainfeng.txt \
    -m imgLabel \
    -d $CULane \
    -w 16 \
    -o $OutputPath \
  #  -s
# explanation:
# -l: image list file to process
# -m: set mode to "imgLabel" or "trainList"
# -d: dataset path
# -w: the width of lane labels generated
# -o: path to save the generated labels
# -s: visualize annotation, remove this option to generate labels
