echo Please ensure the simulator is running..

# init Xserver
# open -a XQuartz
# export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
# xhost +


# start docker with interactive shell, pointing to the appropriate network and viz ready
docker run --entrypoint=qemu3-arm-static --network=sim-duckiebot-lanefollowing-demo_gym-duckietown-net --env="DISPLAY=host.docker.internal:0" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -it placaille/sim-duckiebot-lanefollowing:latest /bin/bash 
