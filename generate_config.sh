#!/usr/bin/expect
spawn echo "start generate cosmos config"
spawn ./gaiad testnet --chain-id=cc-cosmos --starting-ip-address=127.168.3.94
expect "Password for account 'node0' (default 12345678):"
send "12345678\r"
expect "Password for account 'node1' (default 12345678):"
send "12345678\r"
expect "Password for account 'node2' (default 12345678):"
send "12345678\r"
expect "Password for account 'node3' (default 12345678):"
send "12345678\r"
interact
