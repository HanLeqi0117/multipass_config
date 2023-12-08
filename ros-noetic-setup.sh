# update repository
sudo apt update && sudo apt upgrade -y

# check locale
locale  # check for UTF-8
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale  # verify settings

# check whether Ubuntu universe repository is enable
sudo apt install software-properties-common -y
sudo add-apt-repository universe -y

# add GPG key
sudo apt update && sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# add ros repository
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# update repository
sudo apt update && sudo apt upgrade -y

# instal packages needed for desktop, ros2-humble, colcon build tool
sudo apt install ros-noetic-desktop-full -y
sudo apt install xrdp ubuntu-desktop -y
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y

# add source setup.bash file in .bashrc
echo "# ROS source" >> ~/.bashrc && echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
bash

