# Testing Jenkins installation with local Docker container

This project will start by running the included shell-script. It will create a CentOS based Docker container and run it. After the container has booted up, the script will continue to use Ansible to install Jenkins into the container and testing that it has successfully started. At last, the container will be stopped and removed.
