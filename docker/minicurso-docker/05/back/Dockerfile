FROM python:3.10-slim

WORKDIR /app

RUN pip install flask

RUN pip install psycopg2-binary

COPY . .

CMD [ "python3", "app.py" ]
