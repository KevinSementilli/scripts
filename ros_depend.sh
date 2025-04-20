#!/bin/bash

echo "\n\n Installing gazebo \n"
sudo apt install ros-humble-gazebo-ros-pkgs

echo -e "\n\n Installing ros2_control \n"
sudo apt install ros-humble-ros2-control ros-humble-ros2-controllers

echo -e "\n\n Installing rqt \n"
sudo apt install ros-humble-rqt

echo -e "\n\n Installing serial library for uart protocol \n"
sudo apt install libserial-dev

echo -e "\n\n Installing Joy Node \n"
sudo apt install ros-humble-joy

echo -e "\n\n ALL DONE!! \n"
