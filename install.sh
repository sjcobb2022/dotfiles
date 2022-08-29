cp ./.zshrc ~/.zshrc

cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile
cp ./.profile ~/.profile

cp ./rm_gh_workflows.sh ~/rm_gh_workflows.sh

cp ./.config/nvim ~/.config/nvim

if [ -f "/etc/arch-release" ]; then
  echo "Placehoder"
else
  echo "This installer only works with arch"
fi
