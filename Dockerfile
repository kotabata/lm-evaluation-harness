FROM nvcr.io/nvidia/pytorch:23.04-py3

# Set default shell to /bin/bash
SHELL ["/bin/bash", "-cu"]

# timezone setting
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install --upgrade pip

COPY ./setup.py ./setup.py
RUN pip install -e ".[ja]"
RUN pip install beautifulsoup4 accelerate bitsandbytes protobuf==3.20.*
