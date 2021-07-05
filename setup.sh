# Run as root
useradd argosopentech
mkdir /home/argosopentech
chown argosopentech:argosopentech /home/argosopentech
cp -r ~/.ssh /home/argosopentech/.ssh
chown -R argosopentech:argosopentech /home/argosopentech/.ssh
passwd -d argosopentech
chsh -s /bin/bash argosopentech
usermod -aG sudo argosopentech

# Setup argosopentech
su argosopentech
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/profile.sh > /home/argosopentech/.profile.sh
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/setup.sh | sh
source /home/argosopentech/.profile.sh

# Add swap space
sudo fallocate -l 10G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
