#!/bin/bash

echo "Updating dependencies and getting the latest updates"
sudo apt update
sudo apt upgrade -y  # Automatically agree to upgrade

# Setup sources for ROS 2 Humble
echo "Installing necessary dependencies"
sudo apt install -y software-properties-common curl gnupg lsb-release

echo "Adding ROS 2 repository"
sudo add-apt-repository universe -y
sudo apt update

# Add ROS 2 GPG key and repository
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS 2 Humble
echo "Installing ROS 2 Humble"
sudo apt update
sudo apt install -y ros-humble-desktop

# Source ROS 2 setup and update bashrc
echo "Setting up ROS 2 environment"
source /opt/ros/humble/setup.bash
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# Install colcon for building ROS 2 packages
echo "Installing colcon"
sudo apt install -y python3-colcon-common-extensions

echo "ROS 2 Humble setup complete!"
