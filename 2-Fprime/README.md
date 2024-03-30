# Tutorial 2 - Fprime

This directory contains a few resources that you might find useful setting up Fprime.

## Docker

The Dockerfile and docker-compose.yml files can be used to set up a development container that is prepped with the dependencies needed to run fprime.

Build the `scope-dev-container` container from the Dockerfile
```
docker compose build
```

Launch the container in the background:
```
docker compose up -d
```

Verify that the container is running:
```
docker ps

CONTAINER ID   IMAGE                           COMMAND                  CREATED         STATUS         PORTS                    NAMES
9e4b395144a0   scope-dev                       "/bin/bash"              4 seconds ago   Up 3 seconds                            scope-dev-container
```

There are a few ways to attach to the container and begin doing fprime stuff

1. VSCode
Prequisite: Docker extension installed in VSCode.

Click the Docker icon on the left panel. Under the section called containers find one listed 'scope-dev' or similar. Right click on it and select 'Attach Visual Studio Code'


2. From Command line
Use the follow `docker exec -it <container id or name> /bin/bash`

Example
```
[1] williamzhang % docker exec -it  scope-dev-container /bin/bash
[2] (fprime-venv) root@042fe8299f8a:/# 
```

## Getting Started
If you're following along in you should now be 'inside the container'

First navigate to `/root/fprime_projects`
```
(fprime-venv) root@042fe8299f8a:~# cd /root/fprime_projects/ && ls

Dockerfile  MathProjectExample  README.md  docker-compose.yml
```

You should be able to run the first command of the HellowWorld Tutorial:
```
pip install fprime-bootstrap
```

Continue the tutorial [here](https://fprime-community.github.io/fprime-tutorial-hello-world/docs/NewProject.html).

## MathProjectExample

Navigate to the MathProjectExample directory. Since this is an already existing project we'll have execute a few commands the fprime bootstrap utility would've done any way

```
cd ~/fprime_projects/MathProjectExample
```

Update any git submodules.

```
git submodule update --init --recursive
```

Install f prime dependenices

```
pip install -r fprime/requirements.txt
```

Generate a build enviornment

```
fprime-util generate
```

Build the MathDeployment deployment

```
cd MathDeployment
fprime-util build
```

Test the mathcomponents with fprime gds

```
cd ...
fprime-gds
```