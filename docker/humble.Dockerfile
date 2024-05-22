FROM ros:humble
# ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -r /cmd_vel:=/diff_cont/cmd_vel_unstamped
# ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args -r /cmd_vel:=/diffbot_base_controller/cmd_vel_unstamped
# ros2 launch slam_toolbox online_async_launch.py params_file:=./src/pg1_project/config/mapper_params_online_async.yaml  use_sim_time:=false
# install ros package
# docker ps
# docker exec -it f4b980d4291d bash
RUN apt-get update && apt-get install -y
RUN apt install ros-dev-tools -y
RUN apt install ros-humble-desktop python3-argcomplete -y
# RUN apt install ros-humble-moveit ros-humble-controller-manager -y
# RUN apt install snapd -y
RUN apt install ros-humble-gazebo-ros-pkgs -y
RUN apt install gedit -y
RUN apt install ros-humble-xacro -y
RUN apt install ros-humble-ros2-control ros-humble-ros2-controllers ros-humble-gazebo-ros2-control -y
RUN apt install ros-humble-image-transport-plugins -y
RUN apt install ros-humble-rqt-image-view -y
RUN apt install v4l-utils ros-humble-v4l2-camera -y
RUN apt install libusb-1.0-0-dev -y
RUN apt install psmisc -y
RUN apt install ros-humble-slam-toolbox -y
RUN apt install ros-humble-navigation2 ros-humble-nav2-bringup -y
RUN apt install ros-humble-twist-mux -y
RUN apt install joystick jstest-gtk evtest -y
RUN apt install libcanberra-gtk-module libcanberra-gtk3-module -y

RUN apt install python3-pip -y
RUN pip install setuptools==58.2.0 -y
RUN pip install pyserial -y

RUN echo 'cd /home/ws' >> ~/.bashrc 
RUN echo 'source /opt/ros/humble/setup.bash' >> ~/.bashrc 
RUN echo 'source /home/ws/install/setup.bash' >> ~/.bashrc 
RUN echo 'export ROS_DOMAIN_ID=69' >> ~/.bashrc
# sudo usermod -aG video pgiust
# sometimes you need to kill gzserver for controller manager to work (killall -9 gzserver)
