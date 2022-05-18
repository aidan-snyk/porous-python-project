FROM python:3.11-rc-slim-bullseye

WORKDIR ./
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "init_db.py", "&&", "python", "-m" , "flask", "run", "--host=0.0.0.0"]