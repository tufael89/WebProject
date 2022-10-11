# Python base image.
FROM python:3.7
# Create and set the work directory inside the image named 'app'
ADD . webproject
WORKDIR /webproject
# Execute a pip install command using the list 'requirements.txt'
COPY . .
RUN pip install click
RUN pip install distlib
RUN pip install filelock
RUN pip install Flask
RUN pip install Flask_SQLAlchemy
RUN pip install Flask_WTF
RUN pip install greenlet
RUN pip install itsdangerous
RUN pip install Jinja2
RUN pip install MarkupSafe
RUN pip install platformdirs
RUN pip install SQLAlchemy
RUN pip install virtualenv
RUN pip install Werkzeug
RUN pip install WTForms
# Copy the app file into the image working directory
# State the listening port for the container. 
# The app's code does not actually specify the port, so it would be useful to include here.
# Run 'python app.py' on container start-up. This is the main process.
CMD ["python", "./server.py"]
EXPOSE 5000