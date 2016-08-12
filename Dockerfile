FROM tensorflow/tensorflow:r0.9
MAINTAINER Alain Chomnoue <chomnoue@yahoo.fr>
RUN apt-get update && apt-get install -y libhdf5-dev
RUN pip install --upgrade pip
RUN pip install h5py
RUN pip install scikit-learn
RUN pip install keras
RUN pip install numpy --upgrade
RUN rm -rf /notebooks/*
ADD *.ipynb /notebooks/
WORKDIR /notebooks
CMD ["/run_jupyter.sh"]
