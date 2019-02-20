FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./


RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y locales && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    update-locale && \
    apt-get install -y libaio1 libaio-dev zip unzip vim expect && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove && \
    pip install --no-cache-dir -r requirements.txt
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:UTF-8
ENV LC_ALL en_US.UTF-8
ENV TZ=Asia/Hong_Kong
ENV LD_LIBRARY_PATH /usr/src/app/instantclient_18_3:${LD_LIBRARY_PATH}

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list && apt-get update &&  apt-get install -y yarn
RUN yarn config set registry 'https://registry.npm.taobao.org' && npm config rm proxy && npm config rm https-proxy && npm config set sass-binary-site http://npm.taobao.org/mirrors/node-sass && jupyter labextension install  @jupyterlab/plotly-extension

COPY . .

RUN jupyter notebook --generate-config && chmod 755 ./initpass.sh && ./initpass.sh


ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--port=5002","--allow-root","--no-browser","--NotebookApp.notebook_dir=/opt","--NotebookApp.base_url=jupyter","--NotebookApp.certfile=/usr/src/app/cert.pem","--NotebookApp.keyfile=/usr/src/app/key.pem"]
