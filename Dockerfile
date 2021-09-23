# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
RUN mkdir /ecommerce
WORKDIR /ecommerce
COPY . /ecommerce
RUN pip install -r requirements.txt

