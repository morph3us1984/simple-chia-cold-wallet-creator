#/bin/bash
#sudo apt update && \ 
#sudo apt upgrade -y && \
sudo apt install wget && \ 
wget https://github.com/Chia-Network/chia-blockchain/releases/download/1.3.4/chia-blockchain_1.3.4_amd64.deb && \ 
sudo dpkg -i chia-blockchain_1.3.4_amd64.deb && \ 
cd ~ && \
#git clone https://github.com/Chia-Network/chia-blockchain && \
cd chia-blockchain && \
sh install.sh && \
. ./activate && \
chia init && \
chia init --fix-ssl-permissions ; \
chia keys generate && \
chia keys show --show-mnemonic-seed && \ 
deactivate && \
cd ~
