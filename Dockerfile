FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt-get update && pip install -r requirements.txt

CMD ["python3","app.py"]


ENV PIP_ROOT_USER_ACTION=ignore



# docker build -t diamondpriceprediction:latest .
