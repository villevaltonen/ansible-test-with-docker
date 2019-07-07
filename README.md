# Testing Jenkins installation with local Docker container

This project will start by running the included shell-script (run-ansible-test.sh). It will create a CentOS based Docker container and run it. After the container has booted up, the script will continue to use Ansible to install Jenkins into the container and testing that it has successfully started. At last, the container will be stopped and removed.

## Prequisites:
- Docker installed and daemon running
- Ansible installed

## Starting playbook test with container:
```bash run-ansible-test.sh```

## Additional info:
Currently the exposed port of the container is hardcoded. If you get an error about ports when starting up, replace the exposed port number (32768) in run-ansible-test.sh with a port number that is free on your host machine.
 
