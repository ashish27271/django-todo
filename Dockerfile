FROM python
RUN pip3 install django
COPY . .
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py createsuperuser
CMD ["python","manage.py","runserver","0.0.0.0:8002"]
