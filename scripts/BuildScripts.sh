#!/usr/bin/env bash

# Скрипт для копирования сриптов из этой папаки в папку с пользовательскими бинарниками
# в качестве входного аргумента можно задать конкретный путь

thisFile="BuildScripts.sh"
exportPath=$HOME/"bin/"     # по умолчанию кидаем в папку в домашней дирректории
# проверяем если задан другой путь, то кидаем туда
if [[ $1 ]]; then
   exportPath=$1
fi

# получаем все файлы из этой дирректории
files=$(ls)
# перебор всех файлов
for f in $files; do
  if [[ $f != $thisFile ]]; then
    if [[ ${f: -3} == ".sh" || ${f: -3} == ".py" ]]; then      # если это срипт
      /bin/cp $f "$exportPath"
      echo "Файл $f скопирован в "$exportPath""
    fi
  fi
done
