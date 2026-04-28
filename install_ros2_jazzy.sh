#!/bin/bash
set -e

echo "==> 正在安装 ROS 2 Jazzy"

# 基础依赖
sudo apt update -y
sudo apt install -y software-properties-common
sudo add-apt-repository universe -y

# 安装 curl 并获取 ros-apt-source 最新版本
sudo apt update -y
sudo apt install -y curl
sudo apt update && sudo apt install curl -y
export ROS_APT_SOURCE_VERSION=$(curl -s https://api.github.com/repos/ros-infrastructure/ros-apt-source/releases/latest | grep -F "tag_name" | awk -F'"' '{print $4}')
curl -L -o /tmp/ros2-apt-source.deb "https://github.com/ros-infrastructure/ros-apt-source/releases/download/${ROS_APT_SOURCE_VERSION}/ros2-apt-source_${ROS_APT_SOURCE_VERSION}.$(. /etc/os-release && echo ${UBUNTU_CODENAME:-${VERSION_CODENAME}})_all.deb"
sudo dpkg -i /tmp/ros2-apt-source.deb

# 安装 ROS 开发工具
sudo apt update -y
sudo apt install -y ros-dev-tools

# 系统升级
sudo apt upgrade -y

# 安装 ROS 2 Jazzy（桌面版 + 基础版）
sudo apt install -y ros-jazzy-desktop
sudo apt install -y ros-jazzy-ros-base

echo "==> ROS 2 Jazzy 安装完成 ✅"
echo "请执行： source /opt/ros/jazzy/setup.bash && rviz2 测试安装结果"
