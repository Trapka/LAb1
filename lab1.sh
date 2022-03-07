#!/bin/bash
echo  "Поисковичок "
echo  "Программа служит для поиска файлов по имени или по размеру"
echo   "Разработчик Литовкин Сергей 738-1"
while true 
	do
	echo -n "Введите каталог для поиска , начальный путь "
	read place
	if !(ls $place) ; then
		echo  "Каталог не найден, повторите попытку"
		continue
		fi
	echo  "Выберите режим работы: 1 - поиск по имени файла, 2 - по поиск размеру "
	read action
	if [ $action -eq 1 ]
	then
	echo -n "Введите имя файла " 
	read name
	find $place -name "$name"
	elif [ $action -eq 2 ]
	then
	echo -n "Введите размер файла (размер указываем в байтах)"
	read size 
	if !(echo "$size" | grep -E -q "^?[0-9]+$"); then
    		echo "О нет, вы случайно ввели буквы, это не хорошо, больше так не делайте  "
    		continue
		fi
	find $place -type f -size +"$size"c
	else
	echo  "Вы ввели недопустимую команду , больше так не делайте "
fi
echo -n "Начать снова выполение скрипта. Ввод 'n' закончит выполнение, иной ввод начнёт выполнение скрипта заново "
read y
if [ $y = "n" ]
then
break
fi
done

