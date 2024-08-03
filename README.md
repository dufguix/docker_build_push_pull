# docker_build_push_pull
Simple bash scripts to "docker login, build, push, logout" and "login, pull, logout".

Access your private container repo.

## How to use it ?
- edit files for your container repo and dockerfile name/context.
- run `sudo bash docker-build-push.sh`.
- enter your token secret.
- enter the build tag.
- done.

## Why ?
To access private container repo in one command without leaving sensitive info in the command history.

And I'm not happy with the solution integrated with the docker command for storing the token secrets.
