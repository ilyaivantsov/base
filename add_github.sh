#!/bin/bash

git add .
git commit -m "$2"
git $3
git remote add origin https://github.com/ilyaivantsov/"$1.git"
git push -u origin master