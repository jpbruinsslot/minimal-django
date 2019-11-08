FROM python:3.8

COPY . /srv/minimal-django
RUN pip3 install -r /srv/minimal-django/config/requirements.txt

CMD [ "gunicorn", "--config", \
    "/srv/minimal-django/config/gunicorn.py", \
    "minimal_django.wsgi" \
]
