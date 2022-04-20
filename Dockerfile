FROM python:alpine3.14

RUN apk add curl

RUN apk --no-cache add \
    build-base \
    harfbuzz-dev \
    zlib-dev

COPY requirements.txt .
RUN python -m ensurepip --upgrade
RUN pip install -r requirements.txt

ENTRYPOINT []
