## single node
./gaiad init --chain-id=cc-cosmos testing
./gaiacli keys add validator
# - name: validator
#   type: local
#   address: cosmos17kpjdnvfvv6zztrhykx8csgkrryv0n0gmv2630
#   pubkey: cosmospub1addwnpepq0e578z3gfjnuwqkeqr726eqcq4h2q7v2un9xdhrx5ys0jwkkq7wgmgtpgy
#   mnemonic: ""
#   threshold: 0
#   pubkeys: []


# **Important** write this mnemonic phrase in a safe place.
# It is the only way to recover your account if you ever forget your password.

# improve all switch pattern metal battle curtain plunge easy define habit enable resource thought primary drama awful forward forest prepare naive slot spell design

./gaiad add-genesis-account $(./gaiacli keys show validator -a) 1000000000stake,1000000000validatortoken
./gaiad gentx --name validator
./gaiad collect-gentxs ## genesis block input 

