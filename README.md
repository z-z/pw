# pw
Утилита для копирования значения по ключу из файла в буфер

## Установка

Для установки нужно склонировать проект и прописать в `.bashrc / .zshrc` следующие строки

```shell
export PW_PATH="<путь до склонированной папки>"
export PATH="$PW_PATH:$PATH"
source $PW_PATH/pass-completions.sh
```

## Доступные параметры

`pw -help`  
Показать доступные параметры

`pw -add <key> <value>`  
Добавление пары ключ/значение

`pw -rm <key>`  
Удаление записи по ключу

`pw -ls`  
Получение всех ключей из файла

`pw <key>`  
Копирование значения по ключу

`pw -ssh <key>`  
Копирование значения по ключу, запуск команды ssh  
Для этого нужно настраивать `.ssh/config`

## Linux
Для полноценной работы утилиты необходимо иметь установленным `xclip`
