FROM python:3.9
LABEL maintainer="diodonfrost <diodon.frost@diodonfrost.me>"

WORKDIR /home

RUN pip install django==2.2 gunicorn

RUN django-admin startproject mysite

WORKDIR /home/mysite

CMD ["gunicorn", "mysite.wsgi"]
