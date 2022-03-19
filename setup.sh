# Add argosopentech user
useradd argosopentech
mkdir /home/argosopentech
chown argosopentech:argosopentech /home/argosopentech
cp -r ~/.ssh /home/argosopentech/.ssh
chown -R argosopentech:argosopentech /home/argosopentech/.ssh
passwd -d argosopentech
chsh -s /bin/bash argosopentech
usermod -aG sudo argosopentech
su argosopentech

# Update and upgrade packages
sudo apt-get update
sudo apt-get upgrade -y

# Preferences
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/setup.sh | sh
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/profile.sh > /home/argosopentech/.profile
sudo chown argosopentech:argosopentech /home/argosopentech/.profile
