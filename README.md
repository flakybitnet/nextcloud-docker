# nextcloud-docker

Docker image of Nextcloud, a safe home for all your data.

This is a superset of [official community images](https://github.com/nextcloud/docker).

## Goal

Official image doesn't supply `smbclient` required to [SMB/CIFS external storage](https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/external_storage/smb.html) 
work properly - [Issue 1638: smb support unavailable even from "full" image](https://github.com/nextcloud/docker/issues/1638).

So, the goal of the project is to provide the ability to use SMB/CIFS external storage.

## Images

Images are built on top of the official ones and published in [Quay](https://quay.io/repository/flakybitnet/nextcloud-server), 
[GHCR](https://github.com/flakybitnet/nextcloud-docker/pkgs/container/nextcloud-server), [AWS](https://gallery.ecr.aws/flakybitnet/nextcloud/server) and Harbor registries.

## Usage

Usage is not different from [the official images](https://github.com/nextcloud/docker). So, you can run the server by one of the commands:

```
$ docker run -d -p 8080:80 quay.io/flakybitnet/nextcloud-server
$ docker run -d -p 8080:80 ghcr.io/flakybitnet/nextcloud-server
$ docker run -d -p 8080:80 public.ecr.aws/flakybitnet/nextcloud/server
$ docker run -d -p 8080:80 harbor.flakybit.net/nextcloud/server
```

## Source

Source code are available at [Gitea](https://gitea.flakybit.net/flakybit/nextcloud-docker) and mirrored to [GitHub](https://github.com/flakybitnet/nextcloud-docker).
