#!/bin/bash

# Перевірити чи задані параметри
if [ $# -ne 2 ]; then
  echo "Usage: $0 <path_to_directory> <remote_repository>"
  exit 1
fi

# Перейти в задану папку
cd $1

# Ініціалізувати локальний репозиторій
git init

# Зв'язати локальний та віддалений репозиторії
git remote add origin $2

# Додати всі файли в локальний репозиторій
git add .

# Створити коміт
git commit -m "Initial commit"

# Запушити коміт на віддалений сервер
git push -u origin master
