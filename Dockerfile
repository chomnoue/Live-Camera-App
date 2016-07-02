FROM gcr.io/tensorflow/tensorflow:latest
MAINTAINER Alain Chomnoue <chomnoue@yahoo.fr>
RUN apt-get update && apt-get install -y libhdf5-dev
RUN pip install --upgrade pip
RUN pip install h5py
RUN pip install scikit-learn
RUN rm -rf /notebooks/*
ADD *.ipynb /notebooks/
WORKDIR /notebooks
CMD ["/run_jupyter.sh"]
