# ansible-mongodb
This demonstrates the installation of MongoDB using Ansible

Quick start:
* clone this repository
* run '''vagrant up'''
* ssh into the newly created server
  * run '''ansible-playbook -i src/stage src/playbook.yml''' (also found in bootstrap.sh)

Some things to consider.
* This assumes Ubuntu 14.04
* Due to limitations in Python 2.7.6 and Ubuntu 14.04, I'm not validating certificates
* The backup script is incomplete and should be tied into your object store solution
* This is a single point of failure. You will need to add additional nodes and create a discovery mechanism to accommodate clustered deployment