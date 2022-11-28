FROM python:3

RUN useradd -m -d /app backend

USER backend
WORKDIR /app

RUN pip install flask

COPY . /app/

EXPOSE 5000

ENTRYPOINT ["bash", "/app/start.sh"]
