#!/usr/bin/env bash

PATHGIT = $(pwd)

[ ! -d /etc/sysctl.d ] && mkdir /etc/sysctl.d
cp $PATHGIT/sysctl.d /etc/sysctl.d

[ ! -d /etc/lemurs ] && mkdir /etc/lemurs
cp $PATHGIT/lemurs /etc/lemurs


