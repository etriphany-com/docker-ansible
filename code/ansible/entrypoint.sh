#!/bin/bash

if [ ! -z "$ANSIBLE_VAULT_PASSWORD" ]
then
      echo $ANSIBLE_VAULT_PASSWORD >> .vault;
      ansible-playbook $1 -i $2 -e $3 --vault-password-file .vault;
      rm .vault
else
      ansible-playbook $1 -i $2 -e $3
fi