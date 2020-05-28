#!/usr/bin/env bash
cd /opt
sudo git clone https://github.com/vmware/vsphere-automation-sdk-python.git
cd vsphere-automation-sdk-python
pip3 install --upgrade --force-reinstall -r requirements.txt --extra-index-url file:/opt/vsphere-automation-sdk-python/lib

pip3 install pyvmomi

cd /opt
sudo git clone https://github.com/mikesimos/vsphere_ansible_inventory.git
cd /opt/vsphere_ansible_inventory
pip3 install --upgrade --force-reinstall -r requirements.txt
#Configure vsphere_inventory.ini file
#ansible all -i vsphere_inventory.py -m ping
