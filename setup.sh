# Run as root
useradd argosopentech
mkdir /home/argosopentech
chown argosopentech:argosopentech /home/argosopentech
cp -r ~/.ssh /home/argosopentech/.ssh
chown -R argosopentech:argosopentech /home/argosopentech/.ssh
passwd -d argosopentech
chsh -s /bin/bash argosopentech
usermod -aG sudo argosopentech

su argosopentech
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/profile.sh > /home/argosopentech/.profile.sh
curl https://raw.githubusercontent.com/PJ-Finlay/profile/main/setup.sh | sh
