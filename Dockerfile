FROM python:3.6
WORKDIR /guyamoe
COPY . .
RUN pip install -r requirements.txt
RUN python init.py
RUN python manage.py createsuperuser
EXPOSE 80
CMD ["python","manage.py","runserver"]
