#!/bin/bash

docker run --rm --name ldapserver -h ldapserver --net ldapnet -d jorgepastorr/ldapserver19

docker run --rm --name ssh -h ssh --net ldapnet --privileged -p 2022:22 -v homes:/tmp/home --privileged -d jorgepastorr/ssh19:base 
