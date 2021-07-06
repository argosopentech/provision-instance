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

# Add swap space
sudo fallocate -l 10G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show

# Preferences
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/setup.sh | sh
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/profile.sh > /home/argosopentech/.profile
source /home/argosopentech/.profile
