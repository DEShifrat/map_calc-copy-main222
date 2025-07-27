#!/bin/bash

# Проверка наличия schema.prisma
if [ ! -f "server/prisma/schema.prisma" ]; then
    echo "Ошибка: файл server/prisma/schema.prisma не найден!"
    exit 1
fi

# Остальной код скрипта...
docker-compose up --build -d

echo "Приложение запущено!"
echo "Фронтенд доступен по адресу: http://localhost:8080"
echo "Бэкенд доступен по адресу: http://localhost:3001"