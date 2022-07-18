FROM python:3.9-slim as builder

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y vim && apt-get install -y --no-install-recommends gcc

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN mkdir -p /opt/projects/StylesageTest/

WORKDIR /opt/projects/StylesageTest/

COPY ./* /opt/projects/StylesageTest/

RUN pip --no-cache-dir install poetry

RUN poetry install

