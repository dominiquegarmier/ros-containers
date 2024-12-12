# ros-containers
docker containers for developing ros1 and ros2 python applications

### Installing ros via pip
you can actually install some ros packages via pip by specifying a custom index
```bash
pip install rosbag cv_bridge --extra-index-url https://rospypi.github.io/simple/

CFLAGS="-I$(brew --prefix lz4)/include" \
LDFLAGS="-L$(brew --prefix lz4)/lib" \
pip install roslz4 --extra-index-url https://rospypi.github.io/simple/
```
Its not clear how well this works. This might be useful for local development.

### ROS1 Noetic
to run a ros application run the following command
```
docker build . -t ros1 -f docker/noetic.dockerfile && docker run -it -v "$(pwd):/app" -it ros1
```
after that you can run
```
python main.py
```
or use the repl to experiment



