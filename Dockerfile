FROM tensorflow/tensorflow

MAINTAINER volkodavav@gmail.com

RUN apt-get update -y && apt-get install -y python python-pip ffmpeg
RUN python -V && pip -V
RUN pip --no-cache-dir install moviepy ipython IPython
RUN apt-get autoremove && apt-get autoclean
