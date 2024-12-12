FROM ros:noetic

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-virtualenv \
    && :

RUN virtualenv /opt/venv -ppython3
ENV PATH=/opt/venv/bin:$PATH

RUN . /opt/ros/$ROS_DISTRO/setup.sh
RUN pip install pycryptodomex pyyaml python-gnupg rospkg

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
