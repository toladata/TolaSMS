FROM python:2.7

COPY . /code
WORKDIR /code

RUN pip install -r requirements/base.txt

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && gunicorn -b 0.0.0.0:8000 TolaSMS.wsgi"]
