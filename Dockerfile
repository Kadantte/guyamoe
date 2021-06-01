FROM python:3.6
RUN pip install -r requirements.txt
CMD [ "python", "./init.py" ]
CMD [ "python", "./manage.py createsuperuser" ]
CMD [ "python", "./manage.py runserver" ]
