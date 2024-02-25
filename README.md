# nextcloud-docker

Docker image for Nextcloud, a safe home for all your data.

This is a superset of [official community images](https://github.com/nextcloud/docker).

## Goal

Official image doesn't supply `smbclient` required to [SMB/CIFS external storage](https://docs.nextcloud.com/server/latest/admin_manual/configuration_files/external_storage/smb.html) 
work properly - [Issue 1638: smb support unavailable even from "full" image](https://github.com/nextcloud/docker/issues/1638).

So, the goal of the project is to provide the ability to use SMB/CIFS external storage.

## Images

Images are built on top of official ones and published in Quay, GHCR, AWS registries.
