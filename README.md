# An Application to read digit sequences from images

## How to run the code

Once you clone this repository, you have two options to run the code

### If you have [tensorflow](https://www.tensorflow.org/) installed

First install the required packages

```sh
$ apt-get install -y libhdf5-dev
$ pip install --upgrade pip
$ pip install h5py
$ pip install scikit-learn
$ pip install keras
$ pip install numpy --upgrade
```

Now navigate to the repository where you donwloaded the code and run 

```sh
$ ipython notebook .
```

### Run with docker

In the case you prefer to run with [docker](https://www.docker.com/), enter the following commands in the docker terminal:

#### (Optional) Create a new docker machine

Do this if you want to run the code in a new docker machine

```sh
$ docker-machine create -d virtualbox --virtualbox-memory 4096 tensorflow
$ docker-machine start tensorflow
$ eval $(docker-machine env tensorflow)
```

#### Build the docker image

```sh
$ docker build -t {prefix}/live_camera .
```

plase chage {prefix} to any prefix value you want

#### Run the notebooks

```sh
$ docker run -v "{code location}:/notebooks"  -p 8888:8888 -it --rm {prefix}/live_camera
```

###Running order

You should run load_data.ipynb first, then you can either run build_model.ipynb 
or any file in the exploratory_analysis folder if you want more insights from the data