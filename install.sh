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



#                    ____     
#     _______  ___  / _(_)__ _
#   _/ __/ _ \/ _ \/ _/ / _ `/
#  (_)__/\___/_//_/_//_/\_, / 
#                      /___/  

cp ./.config/nvim ~/.config/nvim
cp ./.config/background ~/.config/background



#     ___           __                   
#    / _ \___ _____/ /_____ ____ ____ ___
#   / ___/ _ `/ __/  '_/ _ `/ _ `/ -_|_-<
#  /_/   \_,_/\__/_/\_\\_,_/\_, /\__/___/
#                          /___/         

if [ -f "/etc/arch-release" ]; then
  echo "Placehoder"
else
  echo "This installer only works with arch"
fi
