# install git, zsh & fonts-powerline
sudo apt-get install -y git zsh

# install missing powerline fonts
git clone https://github.com/powerline/fonts.git
# you need to open powershell as admin and .\install.ps1 now

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install nvm & node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# -> restart console now
nvm install --lts

# install antigen zsh manager
curl -L git.io/antigen > antigen.zsh

# set up access rights for compinit security requirements
chown "$(whoami)" /home/"$(whoami)"/.oh-my-zsh -R
chmod go-w /home/"$(whoami)"/.oh-my-zsh -R

chown "$(whoami)" /home/"$(whoami)"/.antigen -R
chmod go-w /home/"$(whoami)"/.antigen -R
