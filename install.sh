# I hope this works

cp ./.bash_profile ~/.bash_profile

git config --global core.excludesfile ~/dotfiles/.gitignore_global

# maybe I should replace .bashrc entirely
echo ". ~/.bash_profile" >> ~/.bashrc

echo "Hi Jess, I ran your dotfiles install script"
