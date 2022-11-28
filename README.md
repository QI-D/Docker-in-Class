# ACIT 4640 In-Class Docker Evaluation

To set up a Flask app using Docker and Docker Compose. App Code provided by instructor.

## app

- Create a user to run the application.
- The application has a single dependency: flask. Make sure you pip install flask.
- Copy the files in the app folder to a relevant location in your container.
- The application requires a plain text file called student.txt in the same folder as the Python files.
- The student.txt must contain 2 lines:
  - the first line is the name of the student
  - the second line is the student ID
- The application can be run with python web.py
- It will listen on all interfaces, on port 5000.

## web

- Create a Dockerfile for the static web service.
- Serves all the files located in the html folder (HTML files + static files for CSS and JS).
- Forwards all HTTP requests whose URL begins with /eval to the Python API.
- The Python API URL is configurable at runtime using the environment variable API_URL.

## CI/CD Pipeline

- Upon any commit on any branch, the pipeline would:
  - build both images (application and static web service)
  - push them to the Docker Hub under your account
    - qidang/4640-web:latest
    - qidang/4640-app:latest
