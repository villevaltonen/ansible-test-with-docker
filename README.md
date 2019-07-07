# Testing Ansible playbook with local Docker container

This project will start by running the included shell-script (run-ansible-test.sh). It will create a CentOS 7 based Docker container, start it and make the necessary installation and changes to configuration files to enable using SSH connection for Ansible. After the container has booted up, the script will continue to run Ansible playbook "myplaybook.yml". By default there is one role with one task included, that will output "Hello from helloworld-role!" to console. At last, the container will be stopped and removed.

There is also an additional step and script included, that is used to create an additional user to the container. This is not necessary for testing Ansible, but I thought it might be useful for some other cases.

## Prequisites:
- Docker installed and daemon running
- Ansible installed

## Starting playbook test with container:
Execute command: ```bash run-ansible-test.sh <a free port>```

The script expects a free port number as an argument.
The first run will take some time since it's downloading necessary images and packages.

## Additional info:
Currently the exposed port of the container is given as an argument for script. If you get an error about ports when starting up, replace the exposed port number with a port number that is free on your host machine.

If you want to see less output during the run of the playbook, remove chars from "-vvvv" or remove it completely.

This project is initially created for testing Ansible-playbooks on WSL (Windows Subsystem for Linux), but it should be multiplatform. Please let me know if you're encountering issues with other operating systems or with WSL.
