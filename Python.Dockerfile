FROM python:3.9

COPY . .
# Source in local repo and destination in container

RUN pip install -r requirements.txt

CMD ["python","app-name.py","runserver"]
