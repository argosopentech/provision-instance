# Add argosopentech user
useradd argosopentech
mkdir /home/argosopentech
cp -r ~/.ssh /home/argosopentech/.ssh
chown -R argosopentech:argosopentech /home/argosopentech
passwd -d argosopentech
chsh -s /bin/bash argosopentech
usermod -aG sudo argosopentech

# Preferences
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/setup.sh | sh
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/profile.sh > /home/argosopentech/.profile
sudo chown argosopentech:argosopentech /home/argosopentech/.profile
