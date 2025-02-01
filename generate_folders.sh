#!/bin/bash
for i in {1..400}; do
    mkdir -p "folder_$i"
    for j in {1..5}; do
        mkdir -p "folder_$i/sub_$j"
        for k in {1..20}; do
            mkdir -p "folder_$i/sub_$j/deep_$k"
        done
    done
done
echo "Созданы 400 папок с подкаталогами!"

