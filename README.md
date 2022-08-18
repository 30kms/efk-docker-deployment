# this project is created to deploy a single node service of efk system
This will be a fully functional efk system, with TLS and password enabled.

## Installation
1. Before all the things, you should put the passwords into the blanks in the `.env` file.
These will be environment variables for the docker-compose. By the way, be careful with the read/write permission of the file.

2. Then you must create the services with the `create.sh` script. It will generate the confinguration and Dockerfile of the fluentd. Edit the `fluent.template` as you wish. But don't touche the words which are uppercased.

3. After the service is running, you can login the kibana gui with the user `elastic` and the password `$ELASTIC_PASSWORD` which you set in the `.env` file.

**Good luck!**
