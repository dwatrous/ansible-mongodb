#!/usr/bin/env bash

# bootstarp ansible for convenience on the control box
apt-get update
apt-get -y install git python-dev python-pip
pip install ansible

#ansible-playbook -i src/stage src/playbook.yml

# run the following commands after the playbook above finishes
#mongo
#use somedb
#db.somecollection.insert({"name": "Daniel Watrous"})
#db.somecollection.insert({"message": "Hello World"})
#db.somecollection.find()