FROM ros:humble

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-virtualenv \
    ros-$ROS_DISTRO-rosbag2 \
    && :

RUN virtualenv /opt/venv -ppython3
ENV PATH=/opt/venv/bin:$PATH

RUN . /opt/ros/$ROS_DISTRO/setup.sh
RUN pip install pycryptodomex pyyaml python-gnupg rospkg

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
