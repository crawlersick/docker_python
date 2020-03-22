FROM python:3.6-buster

WORKDIR /usr/src/app

#COPY requirements.txt ./


RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y locales && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    update-locale && \
    apt-get install -y build-essential libssl-dev libffi-dev libsasl2-dev libldap2-dev expect && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:UTF-8
ENV LC_ALL en_US.UTF-8
ENV TZ=Asia/Hong_Kong

RUN pip install apache-superset
RUN pip install mysqlclient
RUN pip install gunicorn
RUN superset db upgrade
COPY . .
RUN export FLASK_APP=superset && chmod 755 ./initpass.sh && ./initpass.sh
RUN superset load_examples
RUN superset init

RUN pip install gevent
#ENTRYPOINT ["superset", "run","-p","8088","--with-threads","--reload","--debugger"]
ENTRYPOINT ["gunicorn", "-w","10","-k","gevent","--timeout","120","-b","0.0.0.0:10086","--limit-request-line","0","--limit-request-field_size","0","superset:app"]
#CMD ['bash']
