chmod +x generate_config.sh
cp generate_config.sh ../
cd ../
./generate_config.sh
tar czvf testnetconfig.tar mytestnet/
cp -f testnetconfig.tar gaia-ansible/roles/gaia/files/
