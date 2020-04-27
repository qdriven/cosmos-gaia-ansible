#! /bin/

NODE_ID=`cat /etc/nodeid`
echo "current node id is ${NODE_ID}"
mkdir -p .gaiad .gaiacli
cp -rf mytestnet/node${NODE_ID}/gaiad/* .gaiad
cp -rf mytestnet/node${NODE_ID}/gaiacli/* .gaiacli
mkdir -p .gaiad/gentxs
cp mytestnet/gentxs/node${NODE_ID}.json .gaiad/gentxs
