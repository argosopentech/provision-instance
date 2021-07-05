# Run as root
useradd argosopentech
mkdir /home/argosopentech
chown argosopentech:argosopentech /home/argosopentech
cp -r ~/.ssh /home/argosopentech/.ssh
chsh -s /bin/bash argosopentech
chown -R argosopentech:argosopentech /home/argosopentech/.ssh
