FROM ubuntu:focal

WORKDIR /code

RUN apt-get update && \
  apt-get install --no-install-recommends --yes \
  python3 \
  python3-pip

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 5000
