FROM python:3.6.3

RUN pip install Flask
COPY hello.py .
EXPOSE 5000
CMD FLASK_APP=hello.py flask run --host=0.0.0.0


