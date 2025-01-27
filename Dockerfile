# the base image is a lightweight version of python
FROM python:3.9-slim

# set the working directory in the container
WORKDIR /app

# copy the requirements.txt file to the working directory
COPY requirements.txt requirements.txt

# install dependencies
RUN pip install -r requirements.txt

# copy all files from the current directory into the container
COPY . .

# expose the port your app runs on
EXPOSE 8080

# command to run the application
CMD ["python", "app.py"]