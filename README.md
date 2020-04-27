# README

Install COSMOS remote testnet ansible scripts.

## Setup Ubunutu

```sh 
ansible-playbook -i inventory/hosts common.yml
```

## Generate TestNet Configurations

```sh
sh copy_config.sh
```

## Setup Gaia Full Nodes

```sh
ansible-playbook -i inventory/hosts gaia.yml
```

## Start All Gaia Nodes

```sh
ansible-playbook -i inventory/hosts start.yml
```

## Stop all gaia nodes
```sh
ansible-playbook -i inventory/hosts stop.yml
```

## Rest all gaia nodes(not safe)

***This script removes all the data and restart the whole test net.***

```sh
ansible-playbook -i inventory/hosts reset.yml
```