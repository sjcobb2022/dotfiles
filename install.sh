#     ______       ____
#    / __/ /  ___ / / /
#   _\ \/ _ \/ -_) / / 
#  /___/_//_/\__/_/_/  
#                      

cp ./.zshrc ~/.zshrc
cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile
cp ./.profile ~/.profile



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
  # core 
  sudo pacman -Syu
  sudo pacman -Sy git cmake ninja nvim
  sudo pacman -Sy obsidian obs-studio telegram-desktop
  
  # nvim / AstroNvim
  mv ~/.config/nvim ~/.config/nvimbackup
  git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  sudo pacman -Sy ripgrep lazygit NCDU htop python node npm
  nvim +PackerSync

  # Reminder to change the .zshrc or whatever profle to focus on whatever vk_version your using.
  # vulkansdk
  sudo pacman -Sy gcc g++
  sudo pacman -Sy base-devel glm libpng wayland libpciaccess libx11 libxpresent libxcb xcb-util libxrandr xcb-util-keysyms xcb-util-wm lz4 zstd python-distlib qt5-base
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

cp ./.config/nvim/lua/user/init.lua ~/.config/nvim/lua/user/init.lua
cp ./.config/background ~/.config/background
