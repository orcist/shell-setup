# install git, zsh & fonts-powerline
sudo apt-get install -y git zsh fonts-powerline

# install oh-my-zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

# install node
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# install antigen zsh manager
curl -L git.io/antigen > antigen.zsh

# set up access rights for compinit security requirements
chown "$(whoami)" /home/"$(whoami)"/.oh-my-zsh -R
chmod go-w /home/"$(whoami)"/.oh-my-zsh -R

chown "$(whoami)" /home/"$(whoami)"/.antigen -R
chmod go-w /home/"$(whoami)"/.antigen -R
