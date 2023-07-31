FROM dockerhub/library/python:3.9.16-slim

RUN pip install fastapi uvicorn python-multipart sqlalchemy jinja2

COPY app /app
WORKDIR /app

EXPOSE 8000
CMD uvicorn app:app --host 0.0.0.0 --port 8000 --reload