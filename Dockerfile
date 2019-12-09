FROM python:3.6-alpine

RUN adduser -D -g '' testflaskuser

WORKDIR /home/flaskuser/flaskApp

COPY requirements.txt ./

COPY app ./app
COPY startApp.py ./
COPY runapp ./
RUN chmod +x runapp

RUN chown -R flaskuser:flaskuser ./

USER flaskuser
#move install here because it run with appropriate USER(above)
RUN pip install -r requirements.txt --user

ENV FLASK_APP /home/flaskuser/flaskApp/app/routes.py

EXPOSE 5000
ENTRYPOINT ["/home/flaskuser/.local/bin/flask", "run"]
CMD ["--host=0.0.0.0"]
