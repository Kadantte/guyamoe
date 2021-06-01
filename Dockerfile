FROM python:3.6
WORKDIR /guyamoe
RUN pip install -r requirements.txt
RUN python init.py
RUN python manage.py createsuperuser
RUN python manage.py runserver
