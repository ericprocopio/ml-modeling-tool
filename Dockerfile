FROM python:3.8-slim

ENV PYTHONUNBUFFERED True

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY flask_web /app

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app