#!/bin/bash

# Проверяем установлен ли Docker и Docker Compose
if ! command -v docker &> /dev/null; then
    echo "Docker не установлен. Установите Docker перед запуском."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose не установлен. Установите Docker Compose перед запуском."
    exit 1
fi

# Собираем и запускаем контейнеры
docker-compose up --build -d

echo "Приложение запущено!"
echo "Фронтенд доступен по адресу: http://localhost:8080"
echo "Бэкенд доступен по адресу: http://localhost:3001"