#!/bin/bash

#Add our puppet modules 

cp -r ~/Scenario/modules/* /etc/puppet/modules/

#Backup existing init.pp and append the required config

cp /etc/puppet/manifests/init.pp /etc/puppet/manifests/init.pp.scenario.orig

cat ~/Scenario/manifests/init.pp >> /etc/puppet/manifests/init.pp
