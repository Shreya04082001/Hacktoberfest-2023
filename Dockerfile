#basic python app 
# base image  
FROM python:3.8    
# where your code lives  
WORKDIR /app  
# set environment variables (Not mandatory)
# PYTHONDONTWRITEBYTECODE to ignore .pyc (python byte code) files
ENV PYTHONDONTWRITEBYTECODE 1
# PYTHONUNBUFFERED forces streaming all output to the console
ENV PYTHONUNBUFFERED 1  
# install dependencies  
RUN pip install --upgrade pip  
COPY requirements.txt .
RUN pip install -r requirements.txt


COPY . .  
EXPOSE 8000  
CMD python manage.py runserver 
