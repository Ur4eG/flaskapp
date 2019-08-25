FROM python:3.6-alpine

RUN adduser testflaskuser

WORKDIR /home/testflaskuser

COPY requrements.txt requrements.txt
RUN pip install -r requirements.txt --user

RUN mkdir flaskApp
COPY app flaskApp/app
COPY startApp.py flaskApp/

ENV FLASK_APP /home/testflaskuser/flaskApp/app/routes.py

RUN chown -R testflaskuser:testflaskuser flaskApp/
USER testflaskuser

EXPOSE 5000
ENTRYPOINT ["flask run"]
