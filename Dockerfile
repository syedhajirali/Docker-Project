FROM python:3.7
RUN pip install flask
RUN pip install MySQL
RUN pip install flask_mysqldb
RUN apt-get install -y libzmq3-dev python3-pip
VOLUME /flask
COPY flask/ /flask
EXPOSE 8080
WORKDIR /flask
CMD [ "python", "./app_script.py" ]
