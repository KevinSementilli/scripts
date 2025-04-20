#!/bin/bash

echo -e "\n\n Updating dependencies and getting the latest updates\n"
sudo apt update
sudo apt upgrade -y  # Automatically agree to upgrade

# Setup sources for ROS 2 Humble
echo -e "\n\n Installing necessary dependencies\n"
sudo apt install -y software-properties-common curl gnupg lsb-release

echo -e "\n\n Adding ROS 2 repository\n"
sudo add-apt-repository universe -y
sudo apt update

# Add ROS 2 GPG key and repository
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS 2 Humble
echo -e "\n\n Installing ROS 2 Humble\n"
sudo apt update
sudo apt install -y ros-humble-desktop

# Install colcon for building ROS 2 packages
echo -e "\n\n Installing colcon\n"
sudo apt install -y python3-colcon-common-extensions

echo -e "\n\n ROS 2 Humble setup complete!"

# Source ROS 2 setup and update bashrc
echo -e "\n\n Run the following command in home directory \n\n source /opt/ros/humble/setup.bash \n echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
