# Update
sudo apt-get update
sudo apt-get -y upgrade 

# Install zsh
sudo apt-get -y install zsh
sudo apt-get -y install git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Install VIM
sudo apt-get -y install vim
sudo apt-get -y install vim-gui-common
sudo apt-get -y install vim-gtk
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Clone dot-files
git clone https://github.com/chogovadze/dot-files.git

cp dot-files/vimrc .vimrc
cp dot-files/zshrc .zshrc
cp dot-files/p10k.zsh .p10k.zsh
vim +'PlugInstall --sync' +qall
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Reboot
sudo reboot now
