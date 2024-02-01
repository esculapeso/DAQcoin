#!/bin/bash

DATA_DIR="/home/hether/.raven/"

# Stop ravend if running
#sudo raven-cli -datadir="$DATA_DIR" stop

# Wait for ravend to shut down
sudo sleep 1

# Remove the data directory (if you want to delete and recreate it)
sudo rm -rf "${DATA_DIR}testnet7"

# Start ravend with custom data directory
sudo ./src/ravend -daemon -datadir="$DATA_DIR"

# Wait for directory to be created
sudo sleep 4

# Set permissions (if you deleted and recreated the directory)
sudo chmod -R 700 "${DATA_DIR}testnet7"
sudo chown -R hether:hether "${DATA_DIR}testnet7"

