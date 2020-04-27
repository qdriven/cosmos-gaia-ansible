#! /bin/sh

# terdermint init
./gaiad init --chain-id=testing testing
# tendermint node --proxy_app=kvstore
./gaiacli keys add validator
./gaiad add-genesis-account $(./gaiacli keys show validator -a) 1000000000stake,1000000000validatortoken
./gaiad gentx --name validator
./gaiad collect-gentxs
./gaiad start
