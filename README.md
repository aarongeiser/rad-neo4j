# RAD Neo4j
A starting point for containerized Neo4j instances.  Based on RAD Container:  https://github.com/frog/rad-container

# Getting Started
To get started using this Neo4j container, you must have the latest version of Docker installed on your system.  If you are using an older version of Docker, please uninstall it and use the appropriate installer from the docker website.

https://docs.docker.com/engine/installation/

Once Docker is installed on your machine, follow the steps below to begin developing your application.  This is intended for local development, and will map your project root directory into the container and auto restart the application when changes are made.

1.  Navigate to your project root directory and copy the contents of this repository to that location.
2.  Create a copy of `make_env.dist` and rename it to `make_env`.  Update with your project specific information.
3.  `make build`
4.  `make start`

# Success
1.  If successful, you will be able to login to the Neo4j admin panel located at `http://localhost:7474` with the user name and password you specified in your make_env file.
2.  Data is volume mapped to the `/data` folder in the project.  This will allow you to rebuild your contianer without loosing your data.  The contents of this folder should never be commited back to your project repository.

# Further Reading

This starter project make use of the official Neo4j image for Docker.  There are additional configuration parameters that can be passed when building the container.  Please see the full documentation here:  http://neo4j.com/docs/operations-manual/current/installation/docker/