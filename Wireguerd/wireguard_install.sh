#!/bin/bash

# Update the package list and install the WireGuard package
sudo apt-get update
sudo apt-get install -y wireguard

# Generate a new private key for the server
umask 077
wg genkey | tee server_private_key | wg pubkey > server_public_key

# Generate a new private key for the client
umask 077
wg genkey | tee client_private_key | wg pubkey > client_public_key

# Create the WireGuard configuration file for the server
cat << 'EOF' | sudo tee /etc/wireguard/wg0.conf
[Interface]
PrivateKey = <server_private_key>
Address = 10.0.0.1/24
ListenPort = 51820

[Peer]
PublicKey = <client_public_key>
AllowedIPs = 10.0.0.2/32
EOF

# Create the WireGuard configuration file for the client
cat << 'EOF' | tee client.conf
[Interface]
PrivateKey = <client_private_key>
Address = 10.0.0.2/32

[Peer]
PublicKey = <server_public_key>
AllowedIPs = 0.0.0.0/0
Endpoint = <server_ip>:51820
PersistentKeepalive = 21
EOF

# Replace the private keys and the server IP address in the configuration files
sed -i "s|<server_private_key>|$(cat server_private_key)|g" /etc/wireguard/wg0.conf
sed -i "s|<server_public_key>|$(cat server_public_key)|g" /etc/wireguard/wg0.conf
sed -i "s|<client_private_key>|$(cat client_private_key)|g" client.conf
sed -i "s|<client_public_key>|$(cat client_public_key)|g" client.conf
sed -i "s|<server_ip>|\$(ip route get 8.8.8.8 | awk 'NR==1 {print $NF}')|g" client.conf

# Move the client configuration file to the home directory
mv client.conf ~/

# Start the WireGuard service and enable it to run at boot time
sudo systemctl start wg-quick@wg0.service
sudo systemctl enable wg-quick@wg0.service

# Print the client configuration file
echo "The client configuration file is saved to: ~/client.conf"