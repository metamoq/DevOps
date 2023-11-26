#!/bin/bash

# Создание 50 папок
for folder in {1..50}; do
    mkdir -p "Folder_$folder"  # Создание папки
    cd "Folder_$folder"  # Переход в созданную папку
    # Создание 50 файлов внутри каждой папки с расширением .html и нумерацией от 1 до 50
    for file in {1..50}; do
        echo "<html><body><h1>File $file in Folder $folder</h1></body></html>" > "file_$file.html"
    done
    cd ..  # Переход обратно в основную директорию
done

