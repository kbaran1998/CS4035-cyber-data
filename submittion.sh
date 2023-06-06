#!/bin/bash
echo "Lab number:"
read lab_num
folder_name=lab$lab_num
echo $folder_name

zip -r Group_27_$folder_name.zip ./$folder_name/* -x ".ipynb_checkpoints/"

zip -ur Group_27_$folder_name.zip docker-compose-windows.yml
zip -ur Group_27_$folder_name.zip docker-compose.yml
zip -ur Group_27_$folder_name.zip Dockerfile
zip -ur Group_27_$folder_name.zip notebook.sh
zip -ur Group_27_$folder_name.zip README.md
zip -ur Group_27_$folder_name.zip requirements.txt
zip -ur Group_27_$folder_name.zip .dockerignore
