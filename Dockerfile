FROM python:3.8-slim

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY flask_web /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]