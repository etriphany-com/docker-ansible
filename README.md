# Description

Docker images used to perform **configuration management** using [Ansible Playbooks](https://docs.ansible.com/ansible/2.9/user_guide/playbooks_intro.html).

# Requirements

* [Docker](https://www.docker.com)

# Provided images
## etriphany/docker-ansible

This image contains **Ansible 2.9** which provides smaller version compared with newer **Ansible 5.X** versions.

The smaller size is particularly important, because the main goal for this image is to run Ansible Playbooks inside `CI/CD` pipelines like **Github Actions**

# Build images
```bash
./code/scripts/build.sh
```

# Usage

The image `entrypoint` will basically call the `ansible-playbook` passing 2 arguments:

1. playbook: Ansible playbook file
2. inventory: Ansible inventory

# Test
```bash
docker run -it --rm -v $(pwd)/code/ansible:/input etriphany/docker-ansible /input/playbook-test.yml localhost
```