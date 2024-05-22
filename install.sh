#!/bin/bash

git submodule init
git submodule update --init --recursive --remote

cd dev_ws/src/pg1_project/

git checkout Humble

cd ../rplidar_ros

git checkout ros2

cd ../odrive_ros2_control

git checkout humble-fw-v0.5.1

cd ../ball_tracker

git checkout main

cd ../joy_tester

git checkout main

cd ../py_serial_pg1_hardware_monitor

git checkout master

cd ../pg1_docking_controller

git checkout master
