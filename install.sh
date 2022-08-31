#!/bin/bash
#     ______       ____
#    / __/ /  ___ / / /
#   _\ \/ _ \/ -_) / / 
#  /___/_//_/\__/_/_/  
#                      

# Purposfully not -r here since we don't want to recurse over any directories (e.g. .git)
cp ./.* ~/ 

#    __  ____  _ ___ __      
#   / / / / /_(_) (_) /___ __
#  / /_/ / __/ / / / __/ // /
#  \____/\__/_/_/_/\__/\_, / 
#                     /___/  

cp ./rm_gh_workflows.sh ~/rm_gh_workflows.sh

#     ___           __                   
#    / _ \___ _____/ /_____ ____ ____ ___
#   / ___/ _ `/ __/  '_/ _ `/ _ `/ -_|_-<
#  /_/   \_,_/\__/_/\_\\_,_/\_, /\__/___/
#                          /___/         

if [ -f "/etc/arch-release" ]; then
  
  ARCH_PACKAGES="git cmake ninja nvim obsidian obs-studio telegram-desktop rip lazygit ncdu \
    htop python python-pip node npm neovide base-devel glm libpng wayland libpciaccess libx11 \
    libxpresent libxcb xcb-util libxrandr xcb-util-keysyms xcb-util-wm lz4 zstd python-distlib \
    qt5-base gcc g++"

  sudo pacman -Syu

  for package in $ARCH_PACKAGES
  do
    if ! pacman -Qi "$package" > /dev/null; then
      sudo pacman -Sy "$package"
    fi
  done

  # nvim / AstroNvim
  mv ~/.config/nvim ~/.config/nvimbackup
  git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  nvim +PackerSync

  # Reminder to change the .zshrc or whatever profle to focus on whatever vk_version your using.
  # vulkansdk
  mkdir ~/vulkan/
  vk_version=1.3.224.1
  wget -o ~/vulkan/vulkansdk.tar.gz https://sdk.lunarg.com/sdk/download/$vk_version/linux/vulkansdk-linux-x86_64-$vk_version.tar.gz
  tar -xf ~/vulkan/vulkansdk.tar.gz
  chmod +x ~/vulkan/$vk_version/vulkansdk
  ~/vulkan/$vk_version/vulkansdk -d all
  
  # shaderc
  git clone https://github.com/google/shaderc.git
  python shaderc/utils/git-sync-deps
  cmake -S shaderc -B shaderc/build
  cmake --build shaderc/build
  cmake --install shaderc/build

  # rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

else
  echo "This installer only works with arch"
fi


#                    ____     
#     _______  ___  / _(_)__ _
#   _/ __/ _ \/ _ \/ _/ / _ `/
#  (_)__/\___/_//_/_//_/\_, / 
#                      /___/  

cp -r .config/* ~/.config/
