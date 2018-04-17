FROM gcr.io/tensorflow/tensorflow:latest-gpu

RUN apt-get update \
 && apt-get install -y git \
 && git clone https://github.com/keras-team/keras.git \
 && cd keras \
 && python setup.py install
