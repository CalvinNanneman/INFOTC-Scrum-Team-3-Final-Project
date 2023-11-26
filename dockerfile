#python for base image
FROM python:3.8-slim-buster

#set working dir in contianer to /app
WORKDIR /app

#copy contents from current dir to container at /app
COPY . /app

#upgrade pip
RUN pip install --upgrade pip

#install packages
RUN pip install --no-cache-dir -r requirements.txt

#set default command
CMD ["python", "app.py"]