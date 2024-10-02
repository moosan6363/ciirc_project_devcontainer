#!/bin/bash
set -e

vcs import < src/ros2.repos src --recursive
sudo apt-get update
rosdep update
rosdep install --from-paths src --ignore-src -y --rosdistro ${ROS_DISTRO}