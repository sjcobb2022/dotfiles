#!/bin/bash
# Reminder to change the .zshrc or whatever profle to focus on whatever vk_version your using.
mkdir ~/vulkan/
vk_version=1.3.224.1
wget -o ~/vulkan/vulkansdk.tar.gz https://sdk.lunarg.com/sdk/download/$vk_version/linux/vulkansdk-linux-x86_64-$vk_version.tar.gz
tar -xf ~/vulkan/vulkansdk.tar.gz
chmod +x ~/vulkan/$vk_version/vulkansdk
~/vulkan/$vk_version/vulkansdk -d all
