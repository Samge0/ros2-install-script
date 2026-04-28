#!/bin/bash
set -e

echo "==> 安装 Gazebo Harmonic 与 ROS 2 Gazebo 桥接包"

# 系统更新
sudo apt update -y
sudo apt upgrade -y

# 安装依赖
sudo apt-get install -y curl lsb-release gnupg

# 安装 Gazebo Harmonic
sudo curl https://packages.osrfoundation.org/gazebo.gpg --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] https://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y gz-harmonic

# 安装 ROS 2 Gazebo 相关包
sudo apt-get install -y ros-jazzy-ros-gz*

# 验证安装
gz sim --version

echo "✅ Gazebo Harmonic 安装完成，可执行 gz sim 打开软件"
