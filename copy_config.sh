chmod +x genereate_config.sh
cp genereate_config.sh ../
cd ../
./genereate_config
tar czvf testnetconfig.tar mytestnet/
cp testnetconfig.tar roles/gaia/files/