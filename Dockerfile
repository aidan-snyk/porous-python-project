FROM python:3.11.0a7-buster

WORKDIR ./
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "init_db.py", "&&", "python", "-m" , "flask", "run", "--host=0.0.0.0"]