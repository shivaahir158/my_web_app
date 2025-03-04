# use the latest Python image as the base
FROM python:latest

# set the working directory inside the container
WORKDIR /app

# copy project files into the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# expose the port Flask runs on
EXPOSE 5000

# command to run the application
CMD ["python", "app.py"]
