FROM python:3.8-slim-buster
## from dockerhub it will bring the python 3.8 slim buster machine
WORKDIR /app
COPY . /app
RUN apt update -y && apt install awscli -y
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]