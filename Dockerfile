# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container 
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install Flask
RUN pip install scikit-learn
RUN pip install nltk

#give port 
EXPOSE 5000 

ENV FLASK_APP=app.py

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
