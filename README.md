# ros-containers
docker containers for developing ros1 and ros2 python applications
### Run the Containers
to run a ros application run the following commands
- for ros1 noetic:
  ```
  docker build . -t ros1 -f docker/noetic.dockerfile && docker run -it -v "$(pwd):/app" -it ros1
  ```
- for ros2 humble:
  ```
  docker build . -t ros2 -f docker/humble.dockerfile && docker run -it -v "$(pwd):/app" -it ros2
  ```

after that you can run
```
python main.py
```
or use the repl to experiment

### installing pip deps locally
you can actually install some ros packages via pip by specifying a custom index
```bash
pip install rosbag cv_bridge --extra-index-url https://rospypi.github.io/simple/

CFLAGS="-I$(brew --prefix lz4)/include" \
LDFLAGS="-L$(brew --prefix lz4)/lib" \
pip install roslz4 --extra-index-url https://rospypi.github.io/simple/
```
Its not clear how well this works. This might be useful for local development.

The above worked for macos. You might have to try something else for ubuntu.


