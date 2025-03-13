#!/bin/bash

for folder in {1..50}; do
    cd "Folder_$folder" || continue  # Переход в каждую из 50 папок
    for file_num in {31..44}; do
        file_name="file_$file_num.html"
        git rm "$file_name"
    done
    git commit -m "Deleted files with numbers 31-44 from directories $folder"
    git push origin main  # Отправить изменения в удаленный репозиторий
    cd ..  # Перейти обратно в основную директорию
done
