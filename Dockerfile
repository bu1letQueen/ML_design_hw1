FROM python:3.8

ENV FLASK_APP=server
LABEL version="0.0.1"

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["flask", "run", "-h", "0.0.0.0", "-p", "8080"]
