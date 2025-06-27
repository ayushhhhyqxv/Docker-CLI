FROM python:3.9

COPY . .
# Source in local repo and destination in container

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python","app-name.py","runserver","0.0.0.0:8000"]
