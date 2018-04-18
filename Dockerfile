FROM gcr.io/tensorflow/tensorflow:latest-gpu


RUN apt-get update \
 && apt-get install -y git \
 && git clone https://github.com/keras-team/keras.git /usr/local/keras \
 && cd /usr/local/keras \
 && python setup.py install
WORKDIR /usr/local/keras/examples
COPY examples/cifar10_cnn.py \
     examples/mnist_cnn.py \
     /usr/local/keras/examples/
