FROM python:3.9.23-slim-bookworm
RUN apt-get update && apt install -y bash nodejs npm python3 python3-pip curl make nano sudo git
RUN pip install -U pip setuptools wheel
RUN pip install -U uv
RUN git clone https://github.com/squee779/Resume-Matcher.git .
EXPOSE 8501 8502
