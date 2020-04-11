FROM ubuntu:18.04

MAINTAINER Jaysal Patel "jaysalpatel.aws@gmail.com"

RUN apt-get update -y && \ 
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR .

RUN pip install -r requirements.txt

COPY . /app
ENTRYPOINT [ "python" ]

CMD [ "flask-blog.py" ]