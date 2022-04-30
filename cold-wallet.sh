#/bin/bash
wget https://github.com/Chia-Network/chia-blockchain/releases/download/1.3.4/chia-blockchain_1.3.4_amd64.deb && \
sudo dpkg -i chia-blockchain_1.3.4_amd64.deb && \
cd /usr/lib/chia-blockchain/resources/app.asar.unpacked/daemon && \
./chia init && \
./chia init --fix-ssl-permissions ; \
./chia keys generate && \
./chia keys show --show-mnemonic-seed
