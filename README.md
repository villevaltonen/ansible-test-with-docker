# Testing Jenkins installation with local Docker container

This project will start by running the included shell-script (run-ansible-test.sh). It will create a CentOS based Docker container and run it. After the container has booted up, the script will continue to use Ansible to install Jenkins into the container and testing that it has successfully started. At last, the container will be stopped and removed.

## Prequisites:
- Docker installed and daemon running
- Ansible installed

## Starting playbook test with container:
Execute command: ```bash run-ansible-test.sh```

The first run will take some time since it's downloading necessary images and packages.

## Additional info:
Currently the exposed port of the container is hardcoded. If you get an error about ports when starting up, replace the exposed port number (32768) in run-ansible-test.sh with a port number that is free on your host machine.

This project is initially created for testing Ansible-playbooks on WSL (Windows Subsystem for Linux), but it should be multiplatform. Please let me know if you're encountering issues with other operating systems or with WSL.
