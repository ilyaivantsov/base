#!/bin/bash

function print_help() {
    echo "  dir         Первый аргумент: название папки на github."
    echo "  comment     Комментарий к коммиту."
    echo "  tag         Тэг для коммита."
    echo "  -y          Делать коммит. "
    echo
}
if [ $# = 0 ]; then
    print_help
	exit 
fi

if [ "$2" == "-y" ]; then
  git add .
  git commit -m "$3"
  git tag "$4"
fi


git remote add origin https://github.com/ilyaivantsov/"$1.git"
git push -u origin master