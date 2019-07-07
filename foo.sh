FOO=$(docker inspect --format '{{ (index (index .NetworkSettings.Ports "22/tcp") 0).HostPort }}' ansible-test)
echo this is port number $FOO
