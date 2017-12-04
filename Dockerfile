FROM python:3.6.3

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY hello.py .
EXPOSE 5000
CMD gunicorn hello:app --workers 8 --bind 0.0.0.0:5000 --access-logfile -


