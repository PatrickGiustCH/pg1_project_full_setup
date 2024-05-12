#!/bin/bash

git submodule init
git submodule update --init --recursive --remote

cd dev_ws/src/pg1_project/

git checkout Humble

cd ../rplidar_ros

git checkout ros2

cd ../odrive_ros2_control

git checkout humble-fw-v0.5.1
