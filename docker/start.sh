#!/bin/bash

# function for user creation
__create_user() {
useradd user
SSH_USERPASS=newpass
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin user)
echo ssh  user password: $SSH_USERPASS
}

# calling function
__create_user
