# This script is used for audio file selection and renaming for team project of course
# Machine Learning for Signal Processing at Carnegie Mellon University, Fall 2016
#
# It deletes all audio files which contain dru and renames all left audio files
# in the format of ID_Index.wav
#
# Author: Lunwen He (lunwenh)
# Date: 22/11/2016
# Notes: please run this script under the directory of audio files

echo "Please input the instrument ID:"

read ID

index=0

for file in *.wav
    do
        if [[ "$file" == *"dru"* ]];
        then
            rm $file
        else
            printf -v filename "%s_%03d.wav" "$ID" "$index"
            let "index+=1"
            mv $file $filename
        fi
    done


