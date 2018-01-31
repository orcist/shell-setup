clear
pip
py
exit
cd ~/
ls
cd .nodenv/
ls
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build
git clone https://github.com/nodenv/node-build-update-defs.git "$(nodenv root)"/plugins/node-build-update-defs
git clone https://github.com/nodenv/nodenv-package-rehash.git "$(nodenv root)"/plugins/nodenv-package-rehash 
git clone https://github.com/nodenv/nodenv-update.git "$(nodenv root)"/plugins/nodenv-update
nodenv package-hooks install --all
nodenv update
nodenv install <newest-version>
cd ..
ls
rm -rf .nodenv/
exit
psql
exit
ls
exit
npm run deploy
git status
clear
sudo apt-get install node
sudo apt-get install nodejs
clear
node -v
exit
node -v
nodejs
nodejs -v
sudo apt-get remove nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
clear
node
node -v
clear
npm -v
clear
npm list --depth=0
npm list --depth=0 -g
nano .bashrc
cd ~
nano .bashrc
zsh
sudo apt-get install zsh
zsh
sudo apt-get remove zsh zsh-common 
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo apt-get install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
zsh
exit
which antigen
antigen
which zsh-antigen
zsh-antigen
exit
