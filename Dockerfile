FROM python:3

WORKDIR /usr/src/app

copy . .

run pip install pygame

EXPOSE 8000

cmd ["python", "/src/main.py"]
