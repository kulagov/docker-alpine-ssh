# Docker Image Alpine with sshd

Docker official Image Alpine 3.12 with sshd started. Password authentication.

#### Upstream Links

* Docker Registry @ [devdotnetorg/alpine-ssh](https://hub.docker.com/r/devdotnetorg/alpine-ssh)
* GitHub @ [devdotnetorg/ubuntu-1604-ssh](https://github.com/devdotnetorg/docker-alpine-ssh)

## Features

* SSH. Allow SSH connection to the container.
* Midnight Commander (Visual file manager).
* htop (an interactive process viewer for Unix).
* Net tools: ping, traceroute, nslookup, iperf nmap

## Image Tags ## 

### Linux amd64 Tags ###

Tags  | Dockerfile  | OS Version  |  Soft
------------- | --  | --  | --
`:latest` `:amd64` | [Dockerfile](https://github.com/devdotnetorg/docker-alpine-ssh/blob/master/Dockerfile.alpine) | `alpine:3.12` | Openssh-server

### Linux arm64 Tags ###

Tags  | Dockerfile  | OS Version  |  Soft
------------- | --  | --  | --
`:latest` `:aarch64` | [Dockerfile](https://github.com/devdotnetorg/docker-alpine-ssh/blob/master/Dockerfile.alpine) | `alpine:3.12` | Openssh-server

### Linux arm32 Tags ###

Tags  | Dockerfile  | OS Version  |  Soft
------------- | --  | --  | --
`:latest` `:armhf` | [Dockerfile](https://github.com/devdotnetorg/docker-alpine-ssh/blob/master/Dockerfile.alpine) | `alpine:3.12` | Openssh-server

## Quick Start
 
### Environment Variables
 
Set variable of password for root user:

`-e PASSWORD=123456`

Run container with public port for connections is 222, password for user root is 123456, volume alpine-data for transfer data in/out of container:

`$ docker run -d --name alpine-sshd -p 222:22 -e PASSWORD=123456 -v alpine-data:/data devdotnetorg/alpine-ssh`

For network is mynetwork:

`$ docker run -d --name alpine-sshd --net mynetwork --ip 172.18.0.20 -p 222:22 -e PASSWORD=123456 -v alpine-data:/data devdotnetorg/alpine-ssh`

## Connect to container

Run Putty set you IP address and port 222

login root, password 123456

## Shell

#### Midnight Commander (Visual file manager)

![Image of Midnight Commander](https://raw.githubusercontent.com/devdotnetorg/docker-alpine-ssh/master/screenshots/scr1-ubuntu--ssh.png)

Site: http://midnight-commander.org/

GNU Midnight Commander is a visual file manager, licensed under GNU General Public License and therefore qualifies as Free Software. It's a feature rich full-screen text mode application that allows you to copy, move and delete files and whole directory trees, search for files and run commands in the subshell. Internal viewer and editor are included.

Start: `$ mc`

#### htop (an interactive process viewer for Unix)

![Image of htop](https://raw.githubusercontent.com/devdotnetorg/docker-alpine-ssh/master/screenshots/scr2-ubuntu--ssh.png)

Site: http://hisham.hm/htop/

This is htop, an interactive process viewer for Unix systems. It is a text-mode application (for console or X terminals) and requires ncurses.

Start: `$ htop`

#### Net tools

![Net tools](https://raw.githubusercontent.com/devdotnetorg/docker-alpine-ssh/master/screenshots/scr3-ubuntu--ssh.png)

## Assembly for ARM devices ##

The build for the ARM architecture was done using [buildx](https://github.com/docker/buildx).

Build script see [buildx-tags.sh](https://github.com/devdotnetorg/docker-alpine-ssh/blob/master/buildx-tags.sh).

## License ##

[MIT License](https://github.com/devdotnetorg/docker-alpine-ssh/blob/master/LICENSE).

## Need help?

If you have questions on how to use the image, please send mail to anton@devdotnet.org