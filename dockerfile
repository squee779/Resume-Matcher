FROM python:3.9.23-slim-bookworm
WORKDIR /Resume-Matcher
RUN apt-get update && apt install -y bash nodejs npm python3 python3-pip curl make nano sudo
RUN pip install -U pip setuptools wheel
RUN pip install -U uv
COPY . .
EXPOSE 8501
