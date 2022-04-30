#/bin/bash
sudo apt update && \ 
sudo apt upgrade -y && \
sudo apt install git htop nano ssh && \ 
cd ~ && \
git clone https://github.com/Chia-Network/chia-blockchain && \
cd chia-blockchain && \
sh install.sh && \
. ./activate && \
chia init && \
chia init --fix-ssl-permissions ; \
chia keys generate && \
chia keys show --show-mnemonic-seed && \ 
deactivate && \
cd ~
