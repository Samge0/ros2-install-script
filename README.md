# ROS 2 安装脚本

本项目包含用于安装 ROS 2（Robot Operating System 2）的自动化脚本。

## 一键安装

### 安装 ROS 2 Jazzy 桌面版

```bash
curl -fsSL https://raw.githubusercontent.com/Samge0/ros2-install-script/main/install_ros2_jazzy.sh | bash
```

### 安装 ROS 2 Jazzy 对应的 Gazebo Harmonic

```bash
curl -fsSL https://raw.githubusercontent.com/Samge0/ros2-install-script/main/install_ros2_jazzy_gz_harmonic.sh | bash
```

## 脚本列表

| 脚本 | 说明 |
|------|------|
| `install_ros2_jazzy.sh` | 安装 ROS 2 Jazzy 桌面版 |
| `install_ros2_jazzy_gz_harmonic.sh` | 安装 ROS 2 Jazzy 对应的 Gazebo Harmonic |

## 系统要求

- Ubuntu 24.04 (Noble Numbat) 或兼容发行版
- 需要 sudo 权限

## 注意事项

- 脚本会自动更新系统包并安装依赖
- 安装过程需要较长时间，请确保网络连接稳定
- 安装后需要重新加载环境变量
