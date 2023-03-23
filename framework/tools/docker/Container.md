- [Overview](#overview)
- [Running](#running)
  - [Mode](#mode)
  - [Interactive](#interactive)

# Overview

- New docker containers are started with `docker run <image>`
- Containers can be stopped using `docker stop <image>`
- Containers can be started from a paused state using `docker start <image>`
- To remove the container after it exits, add `--rm`

# Running

## Mode

- **Foreground Mode**: attaches the host terminal to the container
  - With `-d`
- **Detached Mode**: run container in background.
  - Without `-d`

## Interactive

`-it`
