#/bin/bash
sudo dpkg -i chia-blockchain_*.deb && \
cd /usr/lib/chia-blockchain/resources/app.asar.unpacked/daemon && \
./chia init && \
./chia init --fix-ssl-permissions ; \
./chia keys generate_and_print
