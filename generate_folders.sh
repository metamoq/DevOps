#!/bin/bash

# Цикл по папкам
for i in {1..400}; do
    # Создаём основную папку
    mkdir -p "folder_$i"
    touch "folder_$i/.gitkeep"  # Добавляем файл .gitkeep

    # Цикл по подкаталогам
    for j in {1..5}; do
        mkdir -p "folder_$i/sub_$j"
        touch "folder_$i/sub_$j/.gitkeep"  # Добавляем файл .gitkeep в подкаталог

        # Цикл по глубоким подкаталогам
        for k in {1..20}; do
            mkdir -p "folder_$i/sub_$j/deep_$k"
            touch "folder_$i/sub_$j/deep_$k/.gitkeep"  # Добавляем файл .gitkeep в глубокий подкаталог
        done
    done
done

echo "Создано 400 папок с подпапками и файлом .gitkeep в каждой папке!"


